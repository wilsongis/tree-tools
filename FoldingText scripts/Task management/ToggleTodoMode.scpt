FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  Copyright (C) 2012 Robin Trew     � 	 	 <   C o p y r i g h t   ( C )   2 0 1 2   R o b i n   T r e w   
  
 l     ��������  ��  ��        l     ��  ��    5 / Permission is hereby granted, free of charge,      �   ^   P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,        l     ��  ��    7 1 to any person obtaining a copy of this software      �   b   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y   o f   t h i s   s o f t w a r e        l     ��  ��    < 6 and associated documentation files (the "Software"),      �   l   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,        l     ��  ��    4 . to deal in the Software without restriction,      �   \   t o   d e a l   i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,       !   l     �� " #��   " = 7 including without limitation the rights to use, copy,     # � $ $ n   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s   t o   u s e ,   c o p y ,   !  % & % l     �� ' (��   ' 7 1 modify, merge, publish, distribute, sublicense,     ( � ) ) b   m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   &  * + * l     �� , -��   , A ; and/or sell copies of the Software, and to permit persons     - � . . v   a n d / o r   s e l l   c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s   +  / 0 / l     �� 1 2��   1 3 - to whom the Software is furnished to do so,     2 � 3 3 Z   t o   w h o m   t h e   S o f t w a r e   i s   f u r n i s h e d   t o   d o   s o ,   0  4 5 4 l     �� 6 7��   6 + % subject to the following conditions:    7 � 8 8 J   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : 5  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   =   *******    > � ? ?    * * * * * * * <  @ A @ l     �� B C��   B = 7 The above copyright notice and this permission notice     C � D D n   T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   A  E F E l     �� G H��   G ' ! shall be included in ALL copies     H � I I B   s h a l l   b e   i n c l u d e d   i n   A L L   c o p i e s   F  J K J l     �� L M��   L / ) or substantial portions of the Software.    M � N N R   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . K  O P O l     �� Q R��   Q   *******    R � S S    * * * * * * * P  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X G A THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,     Y � Z Z �   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   W  [ \ [ l     �� ] ^��   ] G A EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES     ^ � _ _ �   E X P R E S S   O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   \  ` a ` l     �� b c��   b Q K OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.     c � d d �   O F   M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T .   a  e f e l     �� g h��   g S M IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,     h � i i �   I N   N O   E V E N T   S H A L L   T H E   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   f  j k j l     �� l m��   l E ? DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,     m � n n ~   D A M A G E S   O R   O T H E R   L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   k  o p o l     �� q r��   q R L TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE     r � s s �   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M ,   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   p  t u t l     �� v w��   v 4 . OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.    w � x x \   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N   T H E   S O F T W A R E . u  y z y l     ��������  ��  ��   z  { | { j     �� }�� 0 ptitle pTitle } m      ~ ~ �   d T o g g l e   . t o d o   m o d e   o n   o r   o f f   i n   s e l e c t e d   h e a d i n g ( s ) |  � � � j    �� ��� 0 pver pVer � m     � � � � �  0 . 0 2 �  � � � j    �� ��� 0 pauthor pAuthor � m     � � � � �  R o b i n   T r e w �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , toggle a mode ON or OFF in selected node(s)    � � � � X   t o g g l e   a   m o d e   O N   o r   O F F   i n   s e l e c t e d   n o d e ( s ) �  � � � l     ��������  ��  ��   �  � � � l      � � � � j   	 �� ��� 0 pstrmode pstrMode � m   	 
 � � � � �  t o d o � 7 1 edit this line to adapt for use with other modes    � � � � b   e d i t   t h i s   l i n e   t o   a d a p t   f o r   u s e   w i t h   o t h e r   m o d e s �  � � � l     ��������  ��  ��   �  � � � l      � � � � j    �� ��� 0 pstrlinetypes pstrLineTypes � m     � � � � � 4   i n t e r s e c t   / / @ t y p e = h e a d i n g � 7 1 adjust this to filter for eligible types of line    � � � � b   a d j u s t   t h i s   t o   f i l t e r   f o r   e l i g i b l e   t y p e s   o f   l i n e �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � I     
�� ����� 0 
togglemode 
ToggleMode �  ��� � o    ���� 0 pstrmode pstrMode��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 
togglemode 
ToggleMode �  ��� � o      ���� 0 strmodename strModeName��  ��   � O     z � � � k    y � �  � � � r    	 � � � 2   ��
�� 
docu � o      ���� 0 lstdocs lstDocs �  ��� � Z   
 y � ����� � >   
  � � � o   
 ���� 0 lstdocs lstDocs � J    ����   � O    u � � � k    t � �  � � � l   �� � ���   � > 8 GET NAME OF ANY CURRENT MODE IN *FIRST* SELECTED HEADER    � � � � p   G E T   N A M E   O F   A N Y   C U R R E N T   M O D E   I N   * F I R S T *   S E L E C T E D   H E A D E R �  � � � r     � � � I   ������
�� .PTsugtslnull���     docu��  ��   � o      ���� 0 recseln recSeln �  � � � Z    , � ����� � =    # � � � o     !���� 0 recseln recSeln � m   ! "��
�� 
msng � L   & (����  ��  ��   �  � � � r   - 0 � � � m   - . � � � � �   � o      ���� 0 strmode strMode �  � � � r   1 < � � � b   1 : � � � n   1 4 � � � o   2 4���� 0 nodepath nodePath � o   1 2���� 0 recseln recSeln � o   4 9���� 0 pstrlinetypes pstrLineTypes � o      ���� 0 strpath strPath �  � � � Q   = W � ��� � r   @ N � � � n   @ L � � � o   J L���� 0 mode   � l  @ J ����� � n   @ J � � � 4   G J�� �
�� 
cobj � m   H I����  � l  @ G ����� � I  @ G���� �
�� .PTsugtnDnull���     docu��   � �� ���
�� 
FTph � o   B C���� 0 strpath strPath��  ��  ��  ��  ��   � o      ���� 0 strmode strMode � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  X X��������  ��  ��   �  � � � l  X X�� � ���   � 0 * TOGGLE BETWEEN MODE NAME AND EMPTY STRING    � � � � T   T O G G L E   B E T W E E N   M O D E   N A M E   A N D   E M P T Y   S T R I N G �  � � � Z   X g � ��� � � >   X [ � � � o   X Y���� 0 strmode strMode � o   Y Z���� 0 strmodename strModeName � r   ^ a   o   ^ _���� 0 strmodename strModeName o      ���� 0 strmode strMode��   � r   d g m   d e �   o      ���� 0 strmode strMode �  l  h h��������  ��  ��   	 l  h h��
��  
 , & UPDATE MODE OF *ALL* SELECTED HEADERS    � L   U P D A T E   M O D E   O F   * A L L *   S E L E C T E D   H E A D E R S	 �� I  h t����
�� .PTsuudnDnull���     docu��   ��
�� 
FTph o   j k���� 0 strpath strPath ����
�� 
FTcg K   l p ����� 0 mode   o   m n�~�~ 0 strmode strMode�  ��  ��   � n     4    �}
�} 
cobj m    �|�|  o    �{�{ 0 lstdocs lstDocs��  ��  ��   � m     �                                                                                      @ alis    `  Macintosh HD               �9�SH+  1�WFoldingText.app                                                `���        ����  	                Applications    �9�S      ���    1�W  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��   �  l     �z�y�x�z  �y  �x   �w l     �v�u�t�v  �u  �t  �w       	�s ~ � � � ��s   �r�q�p�o�n�m�l�r 0 ptitle pTitle�q 0 pver pVer�p 0 pauthor pAuthor�o 0 pstrmode pstrMode�n 0 pstrlinetypes pstrLineTypes
�m .aevtoappnull  �   � ****�l 0 
togglemode 
ToggleMode �k ��j�i�h
�k .aevtoappnull  �   � ****�j  �i     �g�g 0 
togglemode 
ToggleMode�h *b  k+   �f ��e�d !�c�f 0 
togglemode 
ToggleMode�e �b"�b "  �a�a 0 strmodename strModeName�d    �`�_�^�]�\�` 0 strmodename strModeName�_ 0 lstdocs lstDocs�^ 0 recseln recSeln�] 0 strmode strMode�\ 0 strpath strPath! �[�Z�Y�X ��W�V�U�T�S�R�Q�P�O
�[ 
docu
�Z 
cobj
�Y .PTsugtslnull���     docu
�X 
msng�W 0 nodepath nodePath
�V 
FTph
�U .PTsugtnDnull���     docu�T 0 mode  �S  �R  
�Q 
FTcg�P 
�O .PTsuudnDnull���     docu�c {� w*�-E�O�jv i��k/ ^*j E�O��  hY hO�E�O��,b  %E�O *�l �k/�,E�W X 
 hO�� �E�Y �E�O*���l� UY hU ascr  ��ޭ