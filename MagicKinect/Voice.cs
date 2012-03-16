#define _MICROSOFT_SPEECH
#if MICROSOFT_SPEECH
using Microsoft.Speech;
using Microsoft.Speech.Synthetis;
#else
using System.Speech;
using System.Speech.Synthesis;
#endif

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MagicKinect
{
    static class  Voice
    {
        // Méthode permettant de lancer la synthese vocale asynchrone
        //
        public static void SpeechAsynchrone(String texte)
        {
            SpeechSynthesizer s = new SpeechSynthesizer();
            PromptBuilder builder = new PromptBuilder(new System.Globalization.CultureInfo("fr-fr"));
            builder.AppendText(texte);
            s.SpeakAsync(builder);
        }

        // Méthode permettant de lancer la synchronisation de maniere synchrone
        //
        public static void SpeechSynchrone(String text)
        {
            SpeechSynthesizer s = new SpeechSynthesizer();
            String voix = "ScanSoft Virginie_Dri40_16kHz";
            s.SelectVoice(voix);
            s.Speak(text);
        }

        // Méthode permettant de lancer la synchronisation de maniere synchrone
        // Option : séléction de la voie
        //
        public static void SpeechSynchrone(String text, String voix)
        {
            SpeechSynthesizer s = new SpeechSynthesizer();
            s.SelectVoice(voix);
            s.Speak(text);
        }
    }
}
