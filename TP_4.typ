= TP4 : Redressement Triphasé Double Alternance
 \
*Objectif :* Montrer que l’ondulation en sortie est très faible en triphasé par rapport au monophasé, et que l’inductance de lissage peut être plus faible pour obtenir un courant redressé peu ondulé.
== Partie1: Association transformateur triphasé et redresseur PD3 à diodes 
=== Types des transformateurs 
==== Transformateur triphasé Y-Y
Un transformateur triphasé en Y-Y, aussi appelé "étoile-étoile", est une configuration où les enroulements primaires et secondaires sont tous deux connectés en étoile, avec un point neutre disponible à chaque niveau.Ce type de couplage est couramment utilisé dans les transformateurs de distribution pour alimenter des charges triphasées et monophasées. Le point neutre permet un équilibrage des charges et une meilleure sécurité. 
==== Transformateur triphasé Y-D
Un transformateur triphasé en étoile/triangle (Y/D) est une configuration courante où le primaire est connecté en étoile (Y) et le secondaire en triangle (D). Cette configuration permet d'abaisser la tension et est utilisée dans les sous-stations. 
==== Transformateur triphasé D-D
Un transformateur triphasé D/D, aussi appelé delta-delta, est un type de transformateur triphasé où les enroulements primaires et secondaires sont connectés en triangle (delta). Cela signifie qu'une extrémité de chaque enroulement est connectée à l'extrémité de l'enroulement suivant, formant un circuit fermé en forme de triangle. 
==== Transformateur triphasé D-Y
Un transformateur triphasé en D/Y, ou delta primaire/étoile secondaire, est une configuration courante utilisée pour transférer l'énergie électrique entre circuits. Le côté primaire est en delta (connexion en triangle), tandis que le côté secondaire est en étoile (connexion en Y). 
=== Les tensions triphasées
==== Tensions simples
Les tensions simples, ou tensions phase-neutre, sont les tensions mesurées entre chaque phase et le neutre dans un système triphasé. Elles sont notées v1, v2 et v3 et ont toutes la même amplitude et la même valeur efficace. Ces tensions sont décalées de 120° entre elles. 
==== Tension composées
En système triphasé, les tensions composées sont les tensions mesurées entre deux phases quelconques, tandis que les tensions simples sont celles mesurées entre une phase et le neutre. La tension composée est √3 fois plus élevée que la tension simple, soit Ucomposée=3*Usimple .
=== Manipulation : Débit sur une charge résistive
==== Montage réalisé 
Pont redresseur PD3 à 6 diodes, alimenté par un réseau triphasé (220/380 V, 50 Hz) Avec un transformateur Y-Y, rapport de transformation m = 0.5.
#figure(
      image("TP4 valeur moyenne.PNG"),caption: "Montage du redresseur PD3 sur Simulink"
    )
==== Mesures
1. Tensions simples V1N, V2N et V3N
L’oscilloscope permet d’observer les tensions simples du système triphasé, décalées de 120°, comme illustré sur le graphe ci-dessous :
#figure(
      image("TP4_V1_V2_V3.PNG"), caption:"Tensions simples V1N, V2N et V3N"
    )
2. Tensions composées : U12, U23 et U31
La visualisation des tensions composées révèle des formes d’onde typiques, représentant les différences de potentiel entre phases, comme montré ci-dessous.
#figure(
      image("TP4_U12_U23_U31.png"), caption:"Tensions composées : U12, U23 et U31"
    )
3. Tension redressée : Uch, UD1, UD’1
La visualisation des tensions Uch, UD1 et UD’1 permet d’analyser le rôle de chaque diode dans le processus de redressement. On distingue clairement les phases de conduction alternée des diodes, contribuant à la continuité de la tension Uch. Cette représentation met en évidence le lissage partiel apporté par la configuration triphasée, comparé au redressement monophasé.
#figure(
      image("TP4_qst3.png"), caption:"tension de D1, D1' et Uch de sortie"
    )
4. Courants : ich, iD1
L’observation des courants ich et iD1 permet de suivre la circulation du courant à travers la charge et les diodes. Le courant ich reste quasi continu grâce à l'effet de lissage naturel du système triphasé, tandis que le courant iD1 révèle les intervalles précis de conduction de la diode D1. Cette analyse met en lumière la répartition cyclique du courant entre les différentes branches du redresseur.
#figure(
      image("TP4_qst4.png"), caption: "le courant de D1 et le courant de sortie ich"
    )
==== Comparaison de $<U_"ch">$ théorique et expérimental 
Calcule de la valeur moyenne de Uch théoriquement :
#figure(
      image("Vch Moy TP4.png"), caption:"représentation de tension simle de sortie et des intervalles de conduction"
    )
#figure(
      image("eq Vch.png")
    )
#figure(
      image("2 eq Vch.png")
    )
Dans simlulink on a trouvé 655.1 et ar le calcule on a trouvé 628.515 il ya un marge d’erreur mais ils sont proches.
==== Comparaison P3 à diodes / PD3 à diodes
On a le facteur de puissance :
#figure(
      image("facteur K.png")
    )
\
== Partie 2: Redressement Triphasé – Charge RL
\
*Objectif :* Étudier la sortie du pont PD3 alimentant une charge inductive équivalente à une source de courant I0 = 7.2 A.
#figure(
      image("7.PNG"), caption:"Circuit du Redressement Triphasé, Charge RL dans Simulink"
    )
 === Travail à effectuer
==== Étude des tensions 
1. Tracer Uch(θ) et identifier les intervalles de conduction:

#figure(
      image("TP4_Ud1_Ud1'_Uch.png"), caption:"Le graphe de Uch avec les intervalles de conductions"
)

2. Déterminer l’indice de pulsation p.
*Définition de l'indice de pulsation P:* représente le nombre de phases × le nombre d'alternances par période.
Dans notre cas pour un redresseur triphasé double alternance (P3) : $P= 2*3 =6$

3. Exprimer Uch en fonction de V.
$U_"ch"=3 sqrt(3)/pi *V_"max"=3sqrt(3)*sqrt(2)/pi *V$

==== Étude des courants 
4. Courant dans diode D1 : iD1(θ).
#figure(
      image("6.png"), caption:"Le graphe iD1 du diode 1 et ich du sortie"
    )
5. Moyenne et efficace de ID et I.
#figure(
      image("les valeurs moyenne des id1 et ich.PNG"), caption:"Les valeurs moyennes et efficaces de iD1 et ich"
    )
    La moyenne des deux tensions est nulle, ce qui résulte probablement d'une erreur minime et difficilement détectable.
==== Étude des puissances 
6. Calculs de S, P, facteur de puissance fp, et puissance réactive Q.
= Conclusion
Cette étude a clairement mis en évidence les avantages du redressement triphasé par rapport au monophasé, notamment en termes de réduction significative de l'ondulation en sortie. La structure PD3, combinée à une charge inductive, permet d'obtenir un courant redressé particulièrement stable avec une inductance de lissage minimale, confirmant ainsi son efficacité et son intérêt pour les applications industrielles nécessitant une alimentation continue de qualité. Les résultats obtenus soulignent l'importance du choix de la topologie de redressement pour optimiser les performances et réduire les coûts des composants de filtrage.

