using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Media;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Kinect;
using Coding4Fun.Kinect.Wpf;
using Coding4Fun.Kinect;
using System.IO;

namespace MagicKinect
{
    // Reconnaitre les mouvements
    //
    static class PositionRecognition
    {
        // Faire correspondre les gestes aux canvas
        //
        public static Joint scaleCanvas(Joint joint)
        {
            return joint.ScaleTo(610, 523);
        }

        // Obtenir un joint du squelette
        //
        public static Joint getJoint(Skeleton squelette, JointType type)
        {
            return scaleCanvas(squelette.Joints[type]);
        }

        // Valider le choix d'un menu
        // geste : Rapprochement des mains (claquer dans les mains
        //
        public static Boolean valider(Skeleton squelette)
        {
            Joint handLeftScaled = getJoint(squelette, JointType.HandLeft);
            Joint handRightScaled = getJoint(squelette, JointType.HandRight);

            if (Math.Abs(handRightScaled.Position.X - handLeftScaled.Position.X) < 20)
                return true;
            else
                return false;
        }

        // Savoir si l'utilisateur veut quitter
        // Comportement : Mouvement en croix avec les bras
        //
        public static Boolean quitter(Skeleton squelette)
        {
            Joint handright = getJoint(squelette, JointType.HandRight);
            Joint handleft = getJoint(squelette, JointType.HandLeft);
            Joint elbowRight = getJoint(squelette, JointType.ElbowRight);
            Joint ElbowLeft = getJoint(squelette, JointType.ElbowLeft);

            // Comparer la position des jointures
            if (Math.Abs(handright.Position.X - ElbowLeft.Position.X) < 10)
            {
                if (Math.Abs(handleft.Position.X - elbowRight.Position.X) < 10)
                {
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }

        // Permet de savoir su l'utilisteur se trouve sur un bouton
        //
        public static Boolean OverButton(FrameworkElement bouton, Joint joint)
        {
            Joint handScaled = scaleCanvas(joint);

            double buttonY = Canvas.GetTop(bouton);
            double buttonX = Canvas.GetLeft(bouton);

            if (handScaled.Position.X > buttonX && handScaled.Position.Y > buttonY)
            {
                if (handScaled.Position.X < (buttonX + bouton.Width) && handScaled.Position.Y < (buttonY + bouton.Height))
                    return true;
                else
                    return false;
            }
            else
            {
                return false;
            }
        }

        // Methode d'aide
        //
        public static Boolean Aide(Skeleton squelette)
        {
            return true;
        }
    }
}
