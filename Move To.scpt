FasdUAS 1.101.10   ��   ��    l      ����  i         I     �� ��
�� .aevtoappnull  �   � ****  J          	 
 	 o      ���� 	0 input   
  ��  o      ���� 0 
parameters  ��  ��    k     �       l     ��  ��    2 , Ask the user to choose a destination folder     �   X   A s k   t h e   u s e r   t o   c h o o s e   a   d e s t i n a t i o n   f o l d e r      r     	    I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   8 S e l e c t   a   d e s t i n a t i o n   f o l d e r :��    o      ���� 0 targetfolder targetFolder      l  
 
��������  ��  ��        l  
 
��  ��    ? 9 Initialize error logging (optional, for troubleshooting)     �     r   I n i t i a l i z e   e r r o r   l o g g i n g   ( o p t i o n a l ,   f o r   t r o u b l e s h o o t i n g )   ! " ! r   
  # $ # m   
  % % � & &   $ o      ���� 0 errorlog errorLog "  ' ( ' l   ��������  ��  ��   (  ) * ) O    � + , + X    � -�� . - Q   " � / 0 1 / k   % f 2 2  3 4 3 l  % %�� 5 6��   5 / ) Convert the input fileItem to POSIX path    6 � 7 7 R   C o n v e r t   t h e   i n p u t   f i l e I t e m   t o   P O S I X   p a t h 4  8 9 8 r   % , : ; : n   % * < = < 1   ( *��
�� 
psxp = l  % ( >���� > c   % ( ? @ ? o   % &���� 0 fileitem fileItem @ m   & '��
�� 
ctxt��  ��   ; o      ���� 0 
sourcefile 
sourceFile 9  A B A l  - -�� C D��   C . ( Convert the target folder to POSIX path    D � E E P   C o n v e r t   t h e   t a r g e t   f o l d e r   t o   P O S I X   p a t h B  F G F r   - 2 H I H n   - 0 J K J 1   . 0��
�� 
psxp K o   - .���� 0 targetfolder targetFolder I o      ���� &0 destinationfolder destinationFolder G  L M L l  3 3�� N O��   N - ' Use 'do shell script' to move the file    O � P P N   U s e   ' d o   s h e l l   s c r i p t '   t o   m o v e   t h e   f i l e M  Q R Q I  3 D�� S��
�� .sysoexecTEXT���     TEXT S b   3 @ T U T b   3 < V W V b   3 8 X Y X m   3 4 Z Z � [ [  m v   Y n   4 7 \ ] \ 1   5 7��
�� 
strq ] o   4 5���� 0 
sourcefile 
sourceFile W m   8 ; ^ ^ � _ _    U n   < ? ` a ` 1   = ?��
�� 
strq a o   < =���� &0 destinationfolder destinationFolder��   R  b c b l  E E��������  ��  ��   c  d e d l  E E�� f g��   f 7 1 Display a notification for each file being moved    g � h h b   D i s p l a y   a   n o t i f i c a t i o n   f o r   e a c h   f i l e   b e i n g   m o v e d e  i j i r   E R k l k n   E N m n m 1   J N��
�� 
pnam n l  E J o���� o c   E J p q p o   E F���� 0 fileitem fileItem q m   F I��
�� 
alis��  ��   l o      ���� 0 filename fileName j  r s r I  S d�� t u
�� .sysonotfnull��� ��� TEXT t b   S Z v w v m   S V x x � y y  	 F i l e :   w o   V Y���� 0 filename fileName u �� z��
�� 
appr z m   ] ` { { � | | '   C o m p l e t e��   s  }�� } l  e e��������  ��  ��  ��   0 R      �� ~��
�� .ascrerr ****      � **** ~ o      ���� 0 errmsg errMsg��   1 k   n �    � � � l  n n�� � ���   � 2 , Add error to the error log for review later    � � � � X   A d d   e r r o r   t o   t h e   e r r o r   l o g   f o r   r e v i e w   l a t e r �  ��� � r   n � � � � b   n � � � � b   n � � � � b   n � � � � b   n } � � � b   n s � � � o   n o���� 0 errorlog errorLog � m   o r � � � � � $ E r r o r   m o v i n g   f i l e   � l  s | ����� � c   s | � � � n   s x � � � 1   t x��
�� 
pnam � o   s t���� 0 fileitem fileItem � m   x {��
�� 
alis��  ��   � m   } � � � � � �  :   � o   � ����� 0 errmsg errMsg � 1   � ���
�� 
lnfd � o      ���� 0 errorlog errorLog��  �� 0 fileitem fileItem . o    ���� 	0 input   , m     � ��                                                                                  MACS  alis    @  Macintosh HD               �=%�BD ����
Finder.app                                                     �����=%�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   *  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 2 , Check if there were any errors and log them    � � � � X   C h e c k   i f   t h e r e   w e r e   a n y   e r r o r s   a n d   l o g   t h e m �  � � � Z   � � � ����� � >  � � � � � o   � ����� 0 errorlog errorLog � m   � � � � � � �   � k   � � � �  � � � l  � ��� � ���   � / ) Log errors to a text file on the desktop    � � � � R   L o g   e r r o r s   t o   a   t e x t   f i l e   o n   t h e   d e s k t o p �  � � � r   � � � � � b   � � � � � l  � � ����� � I  � ��� � �
�� .earsffdralis        afdr � m   � ���
�� afdrdesk � �� ���
�� 
rtyp � m   � ���
�� 
ctxt��  ��  ��   � m   � � � � � � � " M o v e E r r o r s L o g . t x t � o      ���� 0 logfile logFile �  ��� � Q   � � � � � � k   � � � �  � � � r   � � � � � I  � ��� � �
�� .rdwropenshor       file � 4   � ��� �
�� 
file � o   � ����� 0 logfile logFile � �� ���
�� 
perm � m   � ���
�� boovtrue��   � o      ���� 0 fileref fileRef �  � � � I  � ��� � �
�� .rdwrwritnull���     **** � o   � ����� 0 errorlog errorLog � �� ���
�� 
refn � o   � ����� 0 fileref fileRef��   �  ��� � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 fileref fileRef��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � * E r r o r   l o g g i n g   f a i l e d .��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � * $ Play a sound to indicate completion    � � � � H   P l a y   a   s o u n d   t o   i n d i c a t e   c o m p l e t i o n �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � P a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / G l a s s . a i f f��   �  � � � l  � ���������  ��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ��~ � ��}
�� .aevtoappnull  �   � ****� �| ��|  �  �{�z�{ 	0 input  �z 0 
parameters  �~   � �y�x�w�v�y 	0 input  �x 0 
parameters  �w 0 fileitem fileItem�v 0 errmsg errMsg � /�u �t�s %�r ��q�p�o�n�m�l�k Z�j ^�i�h�g�f x�e {�d�c�b � ��a ��`�_�^ ��]�\�[�Z�Y�X�W�V�U ��T �
�u 
prmp
�t .sysostflalis    ��� null�s 0 targetfolder targetFolder�r 0 errorlog errorLog
�q 
kocl
�p 
cobj
�o .corecnte****       ****
�n 
ctxt
�m 
psxp�l 0 
sourcefile 
sourceFile�k &0 destinationfolder destinationFolder
�j 
strq
�i .sysoexecTEXT���     TEXT
�h 
alis
�g 
pnam�f 0 filename fileName
�e 
appr
�d .sysonotfnull��� ��� TEXT�c 0 errmsg errMsg�b  
�a 
lnfd
�` afdrdesk
�_ 
rtyp
�^ .earsffdralis        afdr�] 0 logfile logFile
�\ 
file
�[ 
perm
�Z .rdwropenshor       file�Y 0 fileref fileRef
�X 
refn
�W .rdwrwritnull���     ****
�V .rdwrclosnull���     ****�U  
�T .sysodlogaskr        TEXT�} �*��l E�O�E�O� ~ {�[��l 	kh  F��&�,E�O��,E�O���,%a %��,%j O�a &a ,E` Oa _ %a a l OPW "X  �a %�a ,a &%a %�%_ %E�[OY��UO�a  Sa a  �l !a "%E` #O -*a $_ #/a %el &E` 'O�a (_ 'l )O_ 'j *W X + a ,j -Y hOa .j OPascr  ��ޭ