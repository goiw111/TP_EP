= TP7 : Onduleur Triphasé
\
*Objectif :* Étudier la commande des thyristors dans un pont triphasé PD3T et l’évolution de la tension selon l’angle ψ.
*Manipulations :*
- Étude pour angle de commande ψ = 120° : uc, ic, intervalles de conduction.
- Étude pour ψ = 45°.
- Mesures : $U_"chmoy"$, $U_"cheff"$, $I_"chmoy"$, $I_"cheff"$, ainsi que les valeurs efficaces et moyennes des thyristors.
*Partie :* Onduleur Triphasé – Commande Pleine Onde
*Objectif :* Relever et analyser les formes d’ondes à la sortie d’un onduleur triphasé sous deux types de commande : pleine onde et MLI.
== Partie 1: Commande pleine onde
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
=== Représenter les tensions simples V1N, V2N, V3N. Etablir l’expression de $V_"cheff"$ en fonction de E. 
#figure(
      image("V1 V2 V3 TP7.png")
    )
La valeur de tension efficace $V_"cheff"$ vaut:
    #figure(
      image("Vcheff TP7.png")
    )
=== Donner l’expression du courant de ligne i1(t)
=== Calculer la puissance Pc reçue par la charge 
=== Exprimer iTi, et iDi en fonction de iki et du signe de iki. 

== Partie 2: Commande MLI
Signaux de commande obtenus par comparaison : sinusoïde modulante vs signal triangulaire porteuse.
Paramètres : m = 0.6, p = 6. Étude pour m = 0.8.
Mesures : U12, V1N, i1, ik1, ik’1, Ueff, Veff, Ieff, puissance Ps et Pc.
Vérification de la nature sinusoïdale de la tension de sortie.

#figure(
      image("MLI TP7.jpeg")
    )
== Conclusion
La commande pleine onde, où chaque interrupteur conduit pendant 180°, génère des tensions de sortie en créneaux avec des harmoniques élevés. Simple à mettre en œuvre, elle est adaptée aux applications robustes ne nécessitant pas une qualité de signal optimale (ex: moteurs asynchrones). Cependant, son facteur de puissance et son rendement sont inférieurs à ceux de la MLI en raison des pertes par commutation et de la distortion harmonique. Son principal avantage réside dans sa simplicité et sa fiabilité pour des charges peu sensibles aux harmoniques.

La commande MLI, basée sur la comparaison d'une sinusoïde modulante et d'un signal triangulaire porteuse (paramètres m=0.6, p=6), permet de générer des tensions de sortie quasi-sinusoïdales avec une ondulation réduite. Pour m=0.8, les mesures des tensions (U₁₂, V₁ₙ), courants (i₁, iₖ₁, iₖ'₁) et puissances (Pₛ, P꜀) confirment l'efficacité de cette technique, offrant un excellent compromis entre qualité du signal et performance énergétique, tout en maintenant un facteur de distortion harmonique faible. La nature sinusoïdale de la tension de sortie est ainsi validée, démontrant l'adéquation de la MLI pour des applications nécessitant des signaux propres et stables.

*Comparaison avec la MLI :*

- Avantage MLI : Qualité de signal supérieure (faible THD), meilleur rendement.
- Avantage Pleine Onde : Simplicité de commande, coût réduit.
Choix selon l’application : MLI pour les charges sensibles, pleine onde pour les systèmes économiques.




