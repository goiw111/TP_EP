= TP7 : Onduleur Triphasé
\
*Objectif :* Étudier la commande des thyristors dans un pont triphasé PD3T et l’évolution de la tension selon l’angle ψ.
*fonctionnement d'onduleur*
Un onduleur fonctionne en convertissant une source de courant continu (CC) en courant alternatif (CA), offrant ainsi une alimentation de secours en cas de coupure de courant. Cette conversion est essentielle pour maintenir l'alimentation électrique de certains appareils, notamment les ordinateurs, en cas de panne. 

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
      image("9 (1).PNG")
    )
== Travaille à effectuer
=== Préciser la séquence de commande des interrupteurs
*L’interrepteur K1 :*
#figure(
      image("K1.PNG",width: 75%)
    )
*L’interrepteur K1' :*
#figure(
      image("K1'.PNG")
    )
*L’interrepteur K2 :*
#figure(
      image("K2.PNG")
    )
*L’interrepteur K2' :*
#figure(
      image("K2'.PNG")
    )
*L’interrepteur K3 :*
#figure(
      image("K3.PNG")
    )
*L’interrepteur K3' :*
#figure(
      image("K3'.PNG")
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

$ i_A(t) = I_m sin(omega t + phi) $

$ i_B(t) = I_m sin(omega t - 2pi/3 + phi) $

$ i_C(t) = I_m sin(omega t + 2pi/3 + phi) $

$I_m$ : amplitude du courant \
$omega = 2pi f$, $f = 50 \,"Hz" $ \
$phi$ : déphasage dû à la charge (fonction de R et L)

=== Calculer la puissance Pc reçue par la charge 
$ P_c = 3  V_"ph" I_"ph" cos(phi) =  $
$ V_"ph,rms" = frac(E,sqrt(2)) approx frac(180,sqrt(2)) approx 127,3V = $
$ I_"ph,rms" = frac(V_"ph,rms", Z) = frac("127,3","16,1") = 7,9A $
$ phi = arctan(omega L,R) = arctan(frac("12,57","10")) approx 51,5 $
$ cos(phi)=cos(51,5) ≈ 0,62 $
$ P_"c" ​= 3⋅127,3⋅7,9⋅0,62 = 1872 W $

=== Exprimer iTi, et iDi en fonction de iki et du signe de iki. 

== Partie 2: Commande MLI
Signaux de commande obtenus par comparaison : sinusoïde modulante vs signal triangulaire porteuse.
Paramètres : m = 0.6, p = 6. Étude pour m = 0.8.
Mesures : U12, V1N, i1, ik1, ik’1, Ueff, Veff, Ieff, puissance Ps et Pc.
Vérification de la nature sinusoïdale de la tension de sortie.

#figure(
      image("MLI TP7.jpeg")
    )
== Partie 3: Commande MLI avec charge inductive
La charge inductive est remplacée par trois générateurs de courants sinusoïdaux correspondant aux fondamentaux des courants i1, i2, i3, d’amplitude Io=5A, de fréquence 50Hz, et déphasés de 120o.
On ajoute des résistances de valeur importante 10kΩ, en parallèles sur chaque générateur de courant, afin de permettre le calcul des tensions simples par SIMULINK.
#figure(
      image("MLI charge inductive.jpeg")
    )
== Conclusion
La commande pleine onde, où chaque interrupteur conduit pendant 180°, génère des tensions de sortie en créneaux avec des harmoniques élevés. Simple à mettre en œuvre, elle est adaptée aux applications robustes ne nécessitant pas une qualité de signal optimale (ex: moteurs asynchrones). Cependant, son facteur de puissance et son rendement sont inférieurs à ceux de la MLI en raison des pertes par commutation et de la distortion harmonique. Son principal avantage réside dans sa simplicité et sa fiabilité pour des charges peu sensibles aux harmoniques.

La commande MLI, basée sur la comparaison d'une sinusoïde modulante et d'un signal triangulaire porteuse (paramètres m=0.6, p=6), permet de générer des tensions de sortie quasi-sinusoïdales avec une ondulation réduite. Pour m=0.8, les mesures des tensions (U₁₂, V₁ₙ), courants (i₁, iₖ₁, iₖ'₁) et puissances (Pₛ, P꜀) confirment l'efficacité de cette technique, offrant un excellent compromis entre qualité du signal et performance énergétique, tout en maintenant un facteur de distortion harmonique faible. La nature sinusoïdale de la tension de sortie est ainsi validée, démontrant l'adéquation de la MLI pour des applications nécessitant des signaux propres et stables.

*Comparaison avec la MLI :*

- Avantage MLI : Qualité de signal supérieure (faible THD), meilleur rendement.
- Avantage Pleine Onde : Simplicité de commande, coût réduit.
Choix selon l’application : MLI pour les charges sensibles, pleine onde pour les systèmes économiques.