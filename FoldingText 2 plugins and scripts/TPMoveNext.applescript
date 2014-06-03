property pTitle : "Move the @next tag along, leaving @done in its wake"

		function(editor, options) {


			// WHAT IS THE CONTAINING PROJECT/HEADING OF A GIVEN LINE ?

			function containingHeading(varNode) {
				var lstEnvelope = ['heading', 'project', 'root'], oNode=varNode, strType = oNode.type();
				
				while (lstEnvelope.indexOf(strType) == -1) {
					oNode = oNode.parent;
					strType = oNode.type();
				}
				if (strType !== 'root') {
					return oNode;
				} else {
					return null; // no enclosing project or header
				}
			}

			// A FUNCTION FOR DETECTING OVERLAP BETWEEN TWO LISTS
			// (e.g. ANY DISQUALIFYING TAGS IN THIS NODE'S TAG LIST ?)

			function intersect(lstA, lstB) {
				var lngA = lstA.length, lngB = lstB.length,
				lstShort=lstA, lstLong=lstB, varReturn = false, i, strPath;

				if (lngA && lngB) {
					if (lngA >= lngB) {
						lstLong = lstA;
						lstShort = lstB;
						lngA = lngB;
					}

					for (i=0; i<lngA; i++) {
						if (lstLong.indexOf(lstA[i]) !== -1) {
							varReturn = true;
							break;
						}
					}
				}
				return varReturn;
			}

			// Javascript Date() to FT/TP datetime string
			function fmtTP(dte) {
				if (dte) {
					var strDate = [dte.getFullYear(),
							('0' + (dte.getMonth()+1)).slice(-2),
							('0'+ dte.getDate()).slice(-2)].join('-'),
						strTime = [('00'+dte.getHours()).slice(-2),
							('00'+dte.getMinutes()).slice(-2)].join(':');
					if (strTime !== '00:00') {
						return [strDate, strTime].join(' ');
					} else {
						return strDate;
					}
				} else {
					return '';
				}
			}



			// TAG THE CURRENT LINE AS 'NOW' OR 'NEXT'
			// (AND IF IT'S ALREADY TAGGED NOW/NEXT, TAG IT AS 'DONE' AND MOVE THE @NOW TAG TO THE NEXT
			//  ELIGIBLE LINE UNDER THIS PROJECT/HEADING, OR MARK THE WHOLE PROJECT/HEADING AS 'DONE')


			var tree = editor.tree(),
				strTag = options.tag, lstExcept = options.except,
				idLast = tree.lastLineNode().id, oFirstNode, oNextNode,
				oProject, lstRemaining, strPath, blnAdded = false,
				oSelnNode = editor.selectedRange().startNode,
				oProject = containingHeading(oSelnNode),
				lstNodes;

			// START WITH THE FIRST LINE TAGGED WITH pstrTag AND MOVE TO THE NEXT
			// NON-BLANK LINE WHICH HAS NO DISQUALIFYING TAGS

			// (nodes in the selected project which are tagged with @now or @next etc)
			strPath = '//@id=' + oProject.id + '//@' + strTag;
			lstNodes = tree.evaluateNodePath(strPath);

			if (lstNodes.length) {
				oFirstNode = lstNodes[0];
				oNextNode = oFirstNode.nextLineNode();
				while (oNextNode !== null && oNextNode.id !== idLast) {
					if (oNextNode.text() !== '') {
						if (!intersect(lstExcept, Object.keys(oNextNode.tags()))) {
							break;
						}
					}
					oNextNode = oNextNode.nextLineNode();
				}
			}

			// TAG THE SELECTED LINE IF NO EXISTING LINE IS YET TAGGED WITH pstrTag
			//debugger;
			if (oFirstNode === undefined) {
				oFirstNode = oSelnNode;
				if (!oFirstNode.hasTag('done')) {
					oFirstNode.addTag(strTag);
					blnAdded = true;
				}
			} else {

				// AND OTHERWISE TAG THE IDENTIFIED SUCCESSOR (CLEARING THE TAG FROM OTHER NODES IN THIS FILE)
				oFirstNode.addTag('done', fmtTP(new Date()));
				if (oNextNode !== null)  {
					lstNodes.forEach(function(oNode) {
						oNode.removeTag(strTag);
					});
					if (! oNextNode.hasTag('done')) {
						oNextNode.addTag(strTag);
						blnAdded = true;
					}
				}
				
				// IF THIS IS THE LAST NODE OF THE PROJECT
				// MARK THE WHOLE PROJECT COMPLETE IF NO REMAINING ITEMS WHICH ARE NOT 'DONE'
				// OTHERWISE, MOVE THE @NOW / @NEXT TAG TO THE FIRST TAG IN THE PROJECT WHICH ISN'T DONE
				oProject = containingHeading(oFirstNode);
				if (oProject !== null) {
					// descendants of this project which are not @done
					strPath = '//@id=' + oProject.id + '//(not @done)';
					lstRemaining = tree.evaluateNodePath(strPath);
					if (lstRemaining.length) {
						oFirstNode.removeTag(strTag);
						lstRemaining[0].addTag(strTag);
					} else {
						oProject.addTag('done', fmtTP(new Date()));
					}
				}
			}
		}
"