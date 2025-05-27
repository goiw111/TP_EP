#pagebreak()
= TP 5: HACHEUR DEVOLTEUR VARIATEUR DE VITESSE POUR MACHINE A COURANT CONTINU
\
*Objectif :* Il s’agit essentiellement de relever et analyser les formes d’ondes et les caractéristiques d’un hacheur série alimentant une machine à courant continu à flux constant.

== Principe du hacheur dévolteur
=== Débit sur une charge résistive


#figure(
    image("0.jpeg")
  )

- 1. Afficher les chronogrammes de $V_"ch" (t)$ et $i_"ch" (t)$, pour
  #figure(
    image("T5 impulsions.png"),caption:"les impulsions de Vch et ich"
  )
- 2. Donner les intervalles de conduction des interrupteurs
  Si la période est TT, alors :
    - K1 conduit pour $0≤t < α T$
    - K2 conduit pour $α T ≤ t < T $
- 3. La tension $U_"ch"$ est-elle sinusoïdale ? Alternative ?
  
  le signal n'alterne as entre les valeurs positive et negative alors ce n’est pas sinusoïdal et n'est pas alternative.

- 4. Quelle est sa période?, sa fréquence ?
$T=2s$ alors $f=1/T = 1/2 = 0.5 "Hz"$
  

- 5. Calculer la valeur moyenne $angle.l u_"ch" angle.r$ de $U_"ch"$.
#figure(
    image("0Vmoy.jpeg"),caption:"Valeur moyenne Uch"
  )
- 6. Calculer la valeur efficace de $u_"ch"$.
$V_"eff" = V_"max" * sqrt(2)=100*sqrt(2)=141.421 V$


=== Variateur de vitesse
1. Tracer l'allure de la tension de charge u_MCC.
K1 passant : u_MCC=E =V_DC1 K2 passant : u_MCC=0
Le circuit de la simulation est comme ci-dessous:
#figure(
    image("00.jpeg"), caption:"Montage de variateur de vitesse sur simulink"
  )
#figure(
    image("TP5_circuit2.png"), caption:"Le graphe du variateur de vitesse "
  )
2. Déterminer l'expression de la valeur moyenne de la tension de charge.
Dans le troisième graphe, la courbe en blue représente la valeur moyenne de $U_"ch"$ qui se stabilise en $U_"chmoy"=20 V$ 
3. En déduire la relation liant V_DC, E et α.

4. Tracer l'allure de la vitesse du moteur et relever sa valeur en régime permanent.

5. Si k=2.25, déterminer la valeur du rapport cyclique me permettant d’avoir une vitesse de 1000tr/mn

6. Représenter l’allure du courant i(t) sur une durée de 2T

  
