= TP 3 : REDRESSEMENT TRIPHASE MONO ALTERNANCE
\
== Redresseur triphasé P3 simple voie tout diodes

- Objectifs du TP

  -  Analyser l’évolution de la tension et du courant de sortie d’un redresseur triphasé.
  -  Étudier le montage tout diodes et commandé (avec thyristors).
  - Comparer les résultats sur différentes charges (résistive, RL, etc.).

- *Partie A*
  1. Donnez les intervalles de conduction des diodes.

  À chaque instant, une seule diode conduit : celle reliée à la phase ayant la tension la plus positive.
  Pour une source triphasée :

  - Les tensions des phases sont :
    
    - v1(t) = Vm sin⁡(ωt)
    - v2(t) = Vm sin⁡(ωt−2π/3)
    - v3(t) = Vm sin⁡(ωt+2π/3)

    #table(
      columns: 2,
      [Intervalle ωt], [Diode conductrice],
      [0 → 2π/3], [D1],
      [2π/3 → 4π/3], [D2],
      [4π/3 → 2π], [D3],
    )
    Chaque diode (D1, D2, D3) conduit pendant un tiers de la période (120° ou 2π/3 rad).

  2. Visualiser et relever l’évolution de la tension de charge et de. $V_"D1​" (t)$ :
    - Conduction : proche de 0 V
    - Blocage : elle supporte une tension inverse élevée, pouvant approcher $V_"m3"$
    
    #figure(
      image("TP_3.png")
    )

  3. Visualiser et relever l’évolution du courant de charge et du courant qui circule dans la diode D1
    #figure(
      image("TP_3_2.png")
    )
  4. Analyser le fonctionnement du montage, et exprimer la valeur moyenne de la tension de charge, la comparer avec la valeur donnée par MATLAB.
  $ V_"ch" = frac(3,2 pi) integral_(pi/6)^(5pi/6) = V_"max" sin(theta) d theta $
  $ = frac(3,2 pi) V_"max" [cos(theta)]_(pi/6)^(5pi/6) = frac(3 sqrt(3.2) V_"eff",2 pi) = 128.649972204 $
    #figure(
      image("TP_3_3.png")
    )
    #figure(
      image("TP_3_4.png")
    )
  5. Calculer le taux d’ondulation τ
    $ Tau = frac(V_"eff",sqrt(2) angle.l V_"eff" angle.r) $
  6. Réalisez un montage P3, à anodes communes. Visualisez la tension de charge, quelles différences enregistrez-vous par rapport au P3 à cathodes communes ?
     #figure(
      image("TP_3_5.png")
    )
    P3, à anodes communes
    #figure(
      image("TP_3_6.png")
    )
    P3 à cathodes communes
    #figure(
      image("TP_3_7.png")
    )

  7. Conclure.\
    Le montage à cathode ou anode commune donne le même résultat en module, mais les polarités s’inversent.

- *Partie b*

  #figure(
    image("TP_3_9.png")
  )

  Réduction importante du taux d’ondulation
  #figure(
    image("TP_3_10.png")
  )

#pagebreak()

==  Redresseur triphasé simple P3 commandé

- *Travail à effectuer*

  1. Donnez les intervalles de conduction des thyristors.
    #table(
      columns: 2,
      [Intervalle ωt], [Diode conductrice],
      [α → α + 2π/3], [TH1],
      [α + 2π/3 → α + 4π/3], [TH2],
      [α + 4π/3 → α + 2π], [TH3],
    )
    puis le cycle recommence. \
    Si α est différent de 0°, les intervalles sont décalés, mais durent toujours 120° (en conduction continue).

  2. Visualiser et relever l’évolution de la tension de charge et de. VTH1
   #figure(
    image("TP_3_11.png")
  )
  3. Visualiser et relever l’évolution du courant de charge et du courant qui circule dans le thyristor TH1
  $ angle.l V_"ch" angle.r = frac(3,2 pi) integral_(pi/6 + α)^(5pi/6 + α) = V_"max" sin(theta) d theta $
  $ = frac(3,2 pi) V_"max" [cos(theta)]_(pi/6 + α)^(5pi/6 + α)  = frac(3 sqrt(3.2) V_"eff" cos(α),2 pi) = 257.299 $
  4. Analyser le fonctionnement du montage, et exprimer la valeur moyenne de la tension de charge, la comparer avec la valeur donnée par MATLAB.
  si α = 45.
  #figure(
    image("TP_3_12.png")
  )
  $ frac(3 sqrt(3.2) V_"eff" cos(α),2 pi) = 181.9 $
    #figure(
    image("TP_3_13.png")
  )
  5. Calculer le taux d’ondulation τ
    $ Tau = frac(V_"eff" cos(α) ,sqrt(2) angle.l V_"eff" angle.r) = 0.611 $
  
  6. Conclure.

    Dans ce TP, nous avons étudié le fonctionnement d’un redresseur triphasé commandé à base de thyristors avec une charge inductive. Ce montage permet de contrôler la valeur moyenne de la tension de sortie en ajustant l’angle d’amorçage α des thyristors.

  Nous avons observé que :

    - Chaque thyristor conduit pendant 120°, mais seulement après réception d’une impulsion de commande à l’instant α.

    - La tension moyenne décroît avec l’augmentation de l’angle α, selon la loi :
      $ angle.l V_"ch" angle.r = frac(3 sqrt(3.2) V_"eff" cos(α),2 pi) $
