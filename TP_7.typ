= TP7 : Redresseur Triphasé à Thyristors (PD3T)
\
*Objectif :* Étudier la commande des thyristors dans un pont triphasé PD3T et l’évolution de la tension selon l’angle ψ.
*Manipulations :*
- Étude pour angle de commande ψ = 120° : uc, ic, intervalles de conduction.
- Étude pour ψ = 45°.
- Mesures : $U_"chmoy"$, $U_"cheff"$, $I_"chmoy"$, $I_"cheff"$, ainsi que les valeurs efficaces et moyennes des thyristors.
*Partie :* Onduleur Triphasé – Commande Pleine Onde
*Objectif :* Relever et analyser les formes d’ondes à la sortie d’un onduleur triphasé sous deux types de commande : pleine onde et MLI.
== Commande pleine onde
Chaque interrupteur est fermé pendant T/2. Les transistors sont commandés selon :
- T1 : 0°–180°
- T2 : 120°–300°
- T3 : 240°–420°
- T’1 : 180°–360°
- T’2 : 300°–400°
- T’3 : 60°–240°
Simulation sur charge R = 10Ω, L = 40mH. Visualisation des tensions et courants de ligne, évaluation de la puissance Pc.
#figure(
      image("6.png")
    )
== Travaille à effectuer
=== Préciser la séquence de commande des interrupteurs
*L’interrepteur K1 :*
#figure(
      image("K1.png")
    )
*L’interrepteur K1' :*
#figure(
      image("K1'.png")
    )
*L’interrepteur K2 :*
#figure(
      image("K2.png")
    )
*L’interrepteur K2' :*
#figure(
      image("K2'.png")
    )
*L’interrepteur K3 :*
#figure(
      image("K3.png")
    )
*L’interrepteur K3' :*
#figure(
      image("K3'.png")
    )
=== Relever les formes d’ondes des tensions composées, U12(t), U23(t), U31(t). Etablir l’expression de Ucheff., en fonction de E.
#figure(
      image("tension composee.PNG")
    )
Le graphe des tension U12, U23 et U31 
#figure(
      image("Picture1.png")
    )
=== Représenter les tensions simples V1N, V2N, V3N. Etablir l’expression de Vcheff., en fonction de E. 
#figure(
      image("V1 V2 V3 TP7.png")
    )
=== Donner l’expression du courant de ligne i1(t)
=== Calculer la puissance Pc reçue par la charge 
=== Exprimer iTi, et iDi en fonction de iki et du signe de iki. 

== Commande MLI
Signaux de commande obtenus par comparaison : sinusoïde modulante vs signal triangulaire porteuse.
Paramètres : m = 0.6, p = 6. Étude pour m = 0.8.
Mesures : U12, V1N, i1, ik1, ik’1, Ueff, Veff, Ieff, puissance Ps et Pc.
Vérification de la nature sinusoïdale de la tension de sortie.


