   M S B A M L   `   `   `  ����^  ZMicrosoft.Samples.Kinect.WpfViewers, Version=0.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Microsoft.Samples.Kinect.WpfViewers#Microsoft.Samples.Kinect.WpfViewers  5      @    :Microsoft.Samples.Kinect.WpfViewers.KinectDiagnosticViewer   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @kt1clr-namespace:Microsoft.Samples.Kinect.WpfViewers     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .��5      � -   5        $��
LayoutRoot��5      
���   �  � ColumnDefinitions  5	   
   �� 5
      $
��Auto �6   �� 5      $��2* �6   �� 5      $��1* �6   �� 5      $
��.05* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   � $��0��6   $��3��6$   $��2��68   
���   �
�������$��14(�5      .+�5      9� -   5        $��Settings��5       9� ExpandDirection$
 Down=�6'   
���   �$��Stretch=�6Q   ��5      � 5        5      �� 5      $
��Auto �6/   �� 5      $��* �6/   �� 5      $
��Auto �6/   .+�5       �� 
����İ�$��0��6<   .��6L   _KinectSensor6[   �� 5!      -   5        $��status��5!   $   
����ح�$��Center=�5"   5   $��1��5#   H   ��5"      �� *Status+ � ToolTip 5#      �� *Sensor.UniqueKinectId+6H   �� 5$      $��Right=�6$   
����İ�$��10(�5%   $   $��40��62   $
��Wrap=�6=   $��2��5&   $   $��	120,0,0,0q�64   (click for settings)5'   ;   5)      5+      5,      � 5.   
   -   5        $��
colorPanel��5.   ,   $��1��6   $��0��6   $	��960��6>   $
��1280��6N    50      �� 51      $
��Auto �6    �� 52      $��* �6    �� 53      $
��Auto �6    .+�55      (� $��1��6   .��57      � .+�58      ;   5Microsoft.Samples.Kinect.WpfViewers.KinectColorViewer  -   5          Name$ colorViewer��58   +   5   /Microsoft.Samples.Kinect.WpfViewers.ImageViewer   CollectFrameRate . 6@   �� 59      .+�5:      >   8Microsoft.Samples.Kinect.WpfViewers.KinectSkeletonViewer  -   5          Name$! KinectSkeletonViewerOnColor��5:   2      	ImageType$ Color=�5=   *   ��5;   *   ��  �� ElementName$ colorViewer��	 �� Path$	 ActualWidth���5<   *   �� $ colorViewer��$	 ActualHeight�5=   *   5>      5?      5@      �� 5B      
 �� Orientation$
 Vertical=�6   
�������$��1��6M   $
��Left=�6Z   $��Bottom=�6u   .+�5C      �� $��24(�6   ��5D      �� $ colorViewer��$	 	FrameRate��� 5E      $��14(�6   FPS6/   5F      5G      ;   5Microsoft.Samples.Kinect.WpfViewers.KinectAudioViewer  5H   
   -   5          Name$ kinectAudioViewer��5H      $��Stretch=�6;   $��Stretch=�6Y   $��1��5I      $��1��6,   $��3��6<   � 5K   
   -   5        $��
depthPanel��5K   ,   $��2��6   $��0��6   .+�5L      � $��4��6   $	��480��6    $	��640��60   .+�5M      (� .��5O      � .+�5P      ;   5Microsoft.Samples.Kinect.WpfViewers.KinectDepthViewer  -	   5          Name$ KinectDepthViewer��5P   /    . 5Q   #   �� 5R      .+�5S        -
   5        $! KinectSkeletonViewerOnDepth��5S   6      	ShowBones .    
ShowJoints .    
ShowCenter . $ Depth=�5V   _   ��5T   *   �� $ KinectDepthViewer��$	 ActualWidth���5U   *   �� $ KinectDepthViewer��$	 ActualHeight�5V   _   5W      5X      5Y      �� 5Z      $
 Vertical=�6   
�������$
��Left=�5[      $��Bottom=�68   .+�5\      �� $��24(�6    ��5]      �� $ KinectDepthViewer��$	 	FrameRate��� 5^      $��14(�6    FPS63   5_      5`      5a      5b      5c      