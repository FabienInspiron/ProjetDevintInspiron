   M S B A M L   `   `   `  ����^  ZMicrosoft.Samples.Kinect.WpfViewers, Version=0.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Microsoft.Samples.Kinect.WpfViewers#Microsoft.Samples.Kinect.WpfViewers  5      ;    5Microsoft.Samples.Kinect.WpfViewers.KinectAudioViewer   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      @kv1clr-namespace:Microsoft.Samples.Kinect.WpfViewers     5      .��5	      � $��20��6   $	��100��6   $��0,2,0,2q�6)     � RowDefinitions  5
   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ theBorderBeam��5      
�������$��1q�6;   $��10��6O   $	��100��6^   $��0��6m   ��5      �� 5      ��5      � -   5        gsStart�� � Color$ Black��5   9    � Offset$ 0Q�6I   � 5      -   5        	gsPre��$ Black��5   9   $
 0.45Q�6I   � 5      -   5        gsIt��$ Orange��5   9   $	 0.5Q�6I   � 5      -   5        	gsPos��$ Black��5   9   $
 0.55Q�6I   � 5      -   5        	gsEnd��$ Black��5   9   $ 1Q�6I   5      _�5      �� 5      -   5         ��Name$ txtDisplayBeam��5      
�������$��Verdana)�6G   $��10(�6\   $�� ��6j   5      �� 5   
   -   5        $ theBorderSource��5      
�������$��1q�6=   $��10��6Q   $	��100��6`   $��1��6o   ��5       �� 5!      ��5#      � -	   5        gsStartS��$ Black��5#   :   $ 0Q�6J   � 5$      -
   5        
gsPreS��$ Black��5$   :   $
 0.45Q�6J   � 5%      -   5        	gsItS��$	 Red��5%   :   $	 0.5Q�6G   � 5&      -   5        
gsPosS��$ Black��5&   :   $
 0.55Q�6J   � 5'      -   5        
gsEndS��$ Black��5'   :   $ 1Q�6J   5)      _�5+      �� 5,      -   5        $ txtDisplaySource��5,      
�������$��Verdana)�6I   $��10(�6^   $�� ��6l   5.      5/      50      