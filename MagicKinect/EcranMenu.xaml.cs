using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Microsoft.Kinect;

namespace MagicKinect
{
    /// <summary>
    /// Logique d'interaction pour EcranMenu.xaml
    /// </summary>
    public partial class EcranMenu : Window
    {
        private Button lastButton;
        private KinectControls kinect;
        private Microsoft.Samples.Kinect.WpfViewers.KinectSensorChooser kinectSensor;

        public EcranMenu()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            kinect = new KinectControls(kinectSensorChooser1);
            kinectSensorChooser1.KinectSensorChanged += new DependencyPropertyChangedEventHandler(kinectSensorChooser1_KinectSensorChanged);
        }

        public void SpeechButton(Button bouton)
        {
            if (lastButton == null)
            {
                lastButton = button_Quitter;
            }

            if (bouton != lastButton)
            {
                Voice.SpeechAsynchrone(bouton.Content.ToString());
            }
        }

        // Prevenir le changement de sensor
        //
        void kinectSensorChooser1_KinectSensorChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            KinectSensor old = (KinectSensor)e.OldValue;

            kinect.StopKinect(old);

            KinectSensor sensor = (KinectSensor)e.NewValue;

            if (sensor == null)
            {
                return;
            }

            var parameters = new TransformSmoothParameters
            {
                Smoothing = 0.3f,
                Correction = 0.0f,
                Prediction = 0.0f,
                JitterRadius = 1.0f,
                MaxDeviationRadius = 0.5f
            };
            sensor.SkeletonStream.Enable(parameters);
            sensor.SkeletonStream.Enable();

            sensor.AllFramesReady += new EventHandler<AllFramesReadyEventArgs>(sensor_AllFramesReady);

            sensor.DepthStream.Enable(DepthImageFormat.Resolution640x480Fps30);
            sensor.ColorStream.Enable(ColorImageFormat.RgbResolution640x480Fps30);

            try
            {
                sensor.Start();
            }
            catch (System.IO.IOException)
            {
                kinectSensor.AppConflictOccurred();
            }
        }

        void sensor_AllFramesReady(object sender, AllFramesReadyEventArgs e)
        {
            if (kinect.closing)
            {
                return;
            }

            //Get a skeleton
            Skeleton first = kinect.GetFirstSkeleton(e);

            if (first == null)
            {
                return;
            }

            kinect.GetCameraPoint(first, e);

            kinect.ScalePosition(HeadEllipse, first.Joints[JointType.Head]);
        }
     }
}
