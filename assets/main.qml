/*
 * Copyright (c) 2011-2013 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

Page {
    titleBar:TitleBar {
        title:"BBImc"
    }
    Container {
        //Todo: fill me with QML
        Label {
            text :"Votre poids en KG :"
        }
        TextField {
            //text: "Poids (en KG)"
            id:textPoids
            hintText: "Votre poids"
            inputMode:TextFieldInputMode.NumbersAndPunctuation
            
        }
        Label {
            text:"Votre taille en cm :"
        }
        TextField {
            hintText: "Votre taille"
            id:textTaille
            inputMode:TextFieldInputMode.NumbersAndPunctuation
        }
        
        Label {
            id : resultat
            text:""
        }
        
        Label {
            id : signification
            text: ""
        }
        Button {
            id:calcul
            text:"Calcul"
            onClicked: {
                var Taille = textTaille.text / 100;
                var total = textPoids.text / (Taille * Taille);
                //total = textPoids. + textTaille.text;
                resultat.text = "Votre imc est de "  + total;
                var ResultatIMC = "";
                //var total = 20;
                if (total <= 16.5)
                {
                    ResultatIMC = "Dénutrition";
                }
                else if(total > 16.5 & total <= 18.5)
                {
                    ResultatIMC = "Maigreur";
                }
                else if (total > 18,5 & total <+ 25)
                {
                    ResultatIMC = "Corpulance Normal";
                }
                else if (total > 25 & total <= 30)
                {
                    ResultatIMC = "Surpoids";
    			}
                else if (total > 30 & total <= 35)
                {
                    ResultatIMC = "Obésité modéré";
                }   
                else if (total > 40)
                {
                    ResultatIMC = "Obésité morbide";
                }             
                signification.text = "Vous êtes en : " + ResultatIMC;
            }
        }
    }
}
