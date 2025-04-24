#import "@preview/noteworthy:0.2.0": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Physics (2)",
  author: "Rashid Almheiri",
  toc-title: "Table of Contents",
)


#counter(heading).update(20)

= Electric Forces

== Application

#exercise[
  Three charges $q_1, q_2, q_3$ are put at the corners of a triangle as seen in the figure.
]

#solution[
  + Draw the electric force on $q_3$ due to $q_1 "and" q_2$
    $q_3$ attracts towards $q_1$ and $q_2$

  + Find the electric force on $q_3$ due to $q_1$ and $q_2$ in unit-vector notation and in magnitude angle notation.
    $
      arrow(F_3) = arrow(F_31) + arrow(F_32) \
      |F_31| = (8.99 times 10^(9)) frac(|25 times 10^(-9)| |-70 times 10^(-9)|, sqrt((22 / 100)^2 + (35 / 100)^2)^2) \
      &= 9.26 times 10^(-5) N \
      |F_32| = (8.99 times 10^(9)) frac(|120 times 10^(-9)| |-70 times 10^(-9)|, sqrt((26 / 100)^2 + (35 / 100)^2)^2) \
      &= 3.86 times 10^(-4) N \
      arrow(F_3) =
    $
]

= Electric Fields

== Application

#exercise[
  A 10 g block with a charge of $+8 times 10^(-3) C$ is placed inside an electric field $arrow(E) = (3000i - 6000j) N / C$ What are
]

#solution[
  + The magnitude and direction (relative to the positive direction of the x-axis) of the acceleration of the block?

  + If the block is released from rest at the origin at time $t = 0$, then at $t = 3s$, what are its
    + x coordinate

    + y coordinate

    + speed
]

#exercise[
  Three charges q1, q2, and q3 are put at the corners of a triangle as seen in the figure.
]

#solution[
  + Draw the electric field at the position of q3 due to q1 and q2.
  + Find the electric field at the position of q3 due to q1 and q2 in unit-vector notation and in magnitude-angle notation.
]

#exercise[
  Two charged particles are attached to an x-axis. Particle 1 of charge $-4.00 times 10^(-7) C$ is at position $x = -5.00 "cm"$ and
  particle 2 of charge $+4.00 times 10^(-7) C$ is at position $x = 10"cm"$.
]

#solution[
  + Midway between the particles, what is their net electric field in unit-vector notation
]

#exercise[
  A non-conducting rod of length $L = 8.15 "cm"$ has a charge $q = -4.23 C$ uniformly distributed along its length
]

#solution[
  + What is the linear charge density of the rod?

  + What are the magnitude and direction (relative to the positive direction of the x-axis) of the electric field produced at P,
  a distance $a = 6 "cm"$ from the rod.

  + What is the electric field magnitude produced a distance $a = 50 m$ by the rod?
]

= Gauss Law

== Application

#exercise[
  Figure 23-24 shows a closed Gaussian-surface in the shape of a cube edge length 2.00 m.
  It lies in a region where the nominal form electric field is given by $arrow(E) = (3.00x + 4.00)i + 6.00j + 7.00k N / C$, with x
  in meters.
]

#solution[
  What is the net charge contained in the cube
]

#exercise[
  Figure 23-35 shows a closed Gaussian surface in the shape of a cube of edge length 2.00 m, with one corner at $x_1 = 5.00 m$, $y_1 = 4.00 m$.
  The cube lies in a region where the electric field vector is given by $arrow(E) = -3.00i - 4.00y^2 j + 3.00k N / C$, with y in meters.
]

#solution[
  What is the net charge contained by the cube
]

= Electric Potential

== Understanding

In a uniform electric field, $Delta V = -"Ed"$
To find the electric potential energy, $U_e = k frac(q_1 q_2, r)$

The unit of electric field is $V / m$
The unit of Surface charge density, represented by $sigma$ is $C / m^2$

The value of $epsilon_0$ is $8.85 times 10^(-12)$

== Application
#exercise[
  A proton is released from rest in a uniform electric field of magnitude E = $2 times 10^4 V / m$, directed along the positive x axis.
  The proton undergoes a displacement of $0.60 m$ in the direction of the field.
]

#solution[
  + Find the change in electric potential due to the displacement
    $
      Delta V = V_b - V_a \
      &= -E times d = -(2 times 10^4) times 0.6 = -1.2 times 10^4 V
    $

  + Find the change in electric potential energy of the proton for this displacement.
    $
      W = -q Delta V = q E d \
      &= (1.6 times 10^(-19) times (2 times 10^4) times 0.6 \
      &= 1.92 times 10^(-15) J
    $

  + Assuming the proton starts from rest, find its speed after it has moved 0.6 m.
    $
      K = 1 / 2 m v^2 \
      1.92 times 10^(-15) = 1 / 2 m v^2 \
      v^2 = frac(2 times 1.92 times 10^(-15), 1.67 times 10^(-27)) \
      &= 2.29 times 10^12 \
      v = 4.795 times 10^6 m / s
    $
]

#exercise[
  An infinite non-conducting sheet with a uniform surface charge density sets up parallel equipotential surfaces.

  Any pair of surfaces differing by $25 V$ are separated by $8.80 "mm"$
]

#solution[
  + Find the magnitude of the surface charge density
    $
      sigma = 2 E times epsilon_0 \
      E = V / d \
      &= 25 / (8.8 * 10^(-3)) \
      &= 2840 V / m \
      sigma = 2 times 2840 times 8.85 times 10^(-12) \
      &= 5.02 times 10^(-8) C / m^2
    $
]

#exercise[
  In the figure below, charge $q_1 = 2.20 "pC"$ is located at the origin, charge $q_2 = -10.0 "pC"$ has coordinates $(0,-50) "cm"$,
  and charge $q_3 = 10.0 "pC"$ has coordinates $(80,0) "cm"$
]

#solution[
  + Find the electric potential at point P (80 cm, -50 cm)
    $
      q_1 = 2.20 times 10^(-12) C, (0,0) \
      q_2 = -10 times 10^(-12) C, (0,-0.5) m \
      q_3 = 10 times 10^(-12) C, (0.8,0) m \
      V_t = V_1 + V_2 + V_3
      V = frac("kq", r) \
      V_1 = frac(
        8.9 times 10^(9) times 2.2 times 10^(-12),
        sqrt((0.8 - 0)^2 + (0.5 - 0)^2)
      ) = 0.21 V \
      V_2 = frac(
        8.9 times 10^(9) times -10 times 10^(-12),
        sqrt((0.8 - 0)^2 + (0.5 - (-0.5))^2)
      ) = -0.112 V \
      V_3 = frac(
        8.9 times 10^(9) times 10 times 10^(-12),
        sqrt((0.8 - 0.8)^2 + (0.5 - 0)^2)
      ) = 0.1798 V \
      V_t = 0.021 - 0.112 + 0.179 = 0.0884 V
    $

  + Find the electric potential *energy* of the configuraton
    $
      U_e = k frac(q_1 q_2, r) \
      U_(1 2) = k frac((2.2 times 10^(-12)) times (-10 times 10^(-12)), sqrt((0 - 0)^2 + (-0.5 - 0)^2)) \
      &= -0.395 times 10^(-12) J \
      U_(1 3) = k frac((2.2 times 10^(-12)) times (10 times 10^(-12)), sqrt((0.8 - 0)^2 + (0 - 0)^2)) \
      &= 0.247 times 10^(-12) J \
      U_(2 3) = k frac((-10 times 10^(-12)) times (10 times 10^(-12)), sqrt((0.8 - 0)^2 + (0 + 0.5)^2)) \
      &= -0.95 times 10^(-12) J \
      U_t = (-0.395 + 0.247 - 0.95) times 10^(-12) \
      &= -1.098 times 10^(-12) J
    $
]

#exercise[
  The electric potential is given by the equation $V = 3.00 x^2 y - 2.00 "yz"$ where V in volts, x, y, z in meters.
]

#solution[
  + Find the magnitude of the electric field at point $(-2,3,1) m$
    $
      E_x = -frac(delta V, delta x) 3 x^2 y - 2 "yz" \
      &= -6x y \
      E_y = -frac(delta V, delta y) 3x^2 y - 2 "yz" \
      &= - 3x^2 + 2z \
      E_z = -frac(delta V, delta z) 3x^2 y - 2 "yz" \
      &= 2y \
      E = (-6 x y)i + (-3x^2 + 2z)j + (2y)z \
      E_i = -6(-2)(3) = 36 V / m \
      E_j = -3(-2)^2 + 2(1) = -10 V / m \
      E_z = 2(3) = 6 V / m \
      E = sqrt(36^2 + (-10)^2 + 6^2) = 37.8 V / m
    $
]

= Capacitances and Dielectrics

== Application

#exercise[
  A parallel‐plate capacitor in air has a plate separation of 1.50 cm and a plate
  area of $25.0 "cm"^2$. The plates are charged to a potential difference of $250 V$
  and disconnected from the source. The capacitor is then immersed in distilled water
  with dielectric constant, $κ = 80$. Assume the liquid is an insulator. Determine
]

#solution[
  + The charge on the plates before and after immersion
    $
      C_0 = frac(epsilon_0 A, d) \
      &= frac(8.85 times 10^(-12) times 25 / 100, 1.5 / 100) \
      &= 1.475 times 10^(-12) F \
      Q_"before" = Delta V times C \
      &= 250 times 1.475 times 10^(-12) \
      &= 3.69 times 10^(-10) C \
      "Given it is disconnected from source,"
      Q_"before" = Q_"after"
    $

  + The capacitance and potential difference after immersion
    $
      C = 80 times 1.475 times 10^(-12) \
      &= 1.18 times 10^(-10) F \
      V = frac(1.18 times 10^(-10), 3.69 times 10^(-10)) \
      &= 3.125 V
    $
]

#exercise[
  In Fig. 25‐30, the battery has a potential
  difference of $V = 12.0$ volt and the five
  capacitors each have a capacitance of $10.0 mu F$.
  What is the charge on
]

#solution[
  + Capacitor 1
    $
      Q_1 = C Delta V \
      &= (10 times 10^(-6)) times (12) \
      &= 0.00012 C \
    $

  + Capacitor 2
    $
      10 times 10^(-6) = 0.00001 \
      C_23 = 1 / 10 + 1 / 10 = 5 mu F \
      C_234 = 5 + 10 = 15 mu F \
      C_2345 = 1 / 15 + 1 / 10 = 5.99 mu F \
      q_2345 = 12 times (5.99 times 10^(-6)) = 0.00007188 C = q_234 = q_5 \
      v_234 = 0.00007188 / (15 times 10^(-6)) = 4.792 V = v_23 = v_4 \
      q_23 = (5 times 10^(-6)) times 4.792 = 0.00002396 C = q_2 = q_3
    $
]

#exercise[
  Two capacitors of $21 mu F$ and $4.1 mu F$ are connected in
  parallel and charged with a $131 V$ power supply.
]

#solution[
  + Calculate the total energy stored in the two capacitors.
    $
      U_"total" = U_1 + U_2 \
      U_1 = 1 / 2 C times V^2 \
      &= 1 / 2 (21 times 10^(-6)) times 131^2 \
      &= 0.1801905 J \
      U_2 = 1 / 2 (4.1 times 10^(-6)) times 131^2 \
      &= 0.035 J \
      U_"total" = 0.035 + 0.18 = 0.215 J
    $

  + What potential difference would be required across the same two capacitors connected in series in order for the combination to store the same energy as in the first part?
    $
      1 / C_"eq" = 1 / c_1 + 1 / c_2 \
      C_"eq" = 3.43 times 10^(-6) F \
      V = frac(2(0.215), 3.43 times 10^(-6)) \
      &= 354.07 V
    $
]

#exercise[
  The circuit below shows three capacitors connected to a power supply $V = 10 V$
]

#solution[
  + Find the equivalent capacitance.
    $
      "C1, C2 are connected in series. Parallel to C3." \
      C_(12) = frac(1, 1 / c_1 + 1 / c_2) \
      &= frac(1, 1 / 12 + 1 / 20) = 7.5 mu F \
      C_(123) = C_12 + C_3 = 7.5 + 30 = 37.5 mu F \
    $

  + The total charge
    $
      Q_"eq" = C_eq times V \
      &= 37.5 times 10^(-6) times V \
      &= 0.000375 C
    $

  + The charge and voltage across each capacitor
    $
      Q_1 = Q_2 = Q_12 \
      V_3 = V_12 = V_t \
      Q_3 = 30 times 10^(-6) times 10 \
      &= 0.0003 C \
      Q_12 = 7.5 times 10^(-6) times 10 \
      &= 0.000075 C \
      V_1 = 0.000075 / (12 times 10^(-6)) \
      &= 6.25 V \
      V_2 = 0.000075 / (20 times 10^(-6)) \
      &= 3.75 V \
    $

  + Find the energy stored in the combination
    $
      U = 1 / 2 C_"eq" V^2 \
      &= 1 / 2 (37.5 times 10^(-6)) times 10^2 \
      &= 0.001875 J
    $
]

= Current and Resistance

== Application

#exercise[
  The quantity of charge q (in coulombs) that has passed through
  a surface of area $2.00 "cm"^2$ varies with time according to the
  equation $q = 4t^3 + 5t + 6$, where $t$ is in seconds.
]

#solution[
  + What is the instantaneous current through the surface at $t = 1.00 s$
    $
      "dq" / "dt" = "d" / "dt" (4t^3 + 5t + 6) \
      &= 12t^2 + 5 \
      12 + 5 = 17 A \
    $

  + What is the value of the current density?
    $
      J = I / A \
      &= 17 / (2 times 10^(-4)) = 85,000 A / m^2
    $
]

#exercise[
  In a particular cathode-ray tube, the measured beam current is
  $30.0 mu A$.
]

#solution[
  + How many electrons strike the tube screen every $40.0 s$?
    $
      Q = I times t \
      &= (30 times 10^(-6)) times 40 \
      &= 1.2 times 10^(-3) C \
      n = Q / e \
      &= frac(1.2 times 10^(-3), 1.6 times 10^(-19)) = 7.5 times 10^15
    $
]

#exercise[
  A certain toaster has a heating element made of Nichrome
  wire. When the toaster is first connected to a $120 V$ source and
  the wire is at temperature of $20.0°C$, the initial current is $1.80 A$.
  The current decreases as the heating element warms up. When
  the toaster reaches its final operating temperature, the current
  is $1.53 A$.
]

#solution[
  + Find the power delivered to the toaster when it is at its operating temperature
    $
      P = 1.53 times 120 \
      &= 183.6 W
    $

  + What is the final temperature of the heating element?
    $
      R_0 = 120 / 1.8 = 66.67 Omega \
      R = 120 / 1.53 = 78.43 Omega \
      "Temperature coefficient of resistance for Nichrome," alpha = 0.0004°C^(-1) \
      78.43 = 66.67 ( 1 + 0.0004 (T_f - 20) ) \
      1 + 0.0004(T_f - 20) = 1.176 \
      0.0004(T_f - 20) = 0.176 \
      T_f - 20 = 440 \
      T_f = 460 C
    $
]

#exercise[
  A resistor is constructed of a carbon rod that has a
  uniform cross-sectional area of $5.00 "mm"^2$. When a potential
  difference of $15 V$ is applied across the ends of the rods,
  there is a current of $4.0 times 10^(-3) A$ in the rod.
]

#solution[
  + Find the resistance of the rod
    $
      R = frac(15, 4 times 10^(-3)) \
      &= 3,750 Omega
    $

  + Find the rod’s length.
    $
      A = 5 times 10^6 \
      rho_"carbon" = 3.5 times 10^(-5) Omega \
      R = frac(p L, A) \
      L = "RA" / rho \
      &= (3750)(5 times 10^6) / (3.5 times 10^(-5)) \
      &= 536 m
    $
]

#exercise[
  An electric car is designed to run off a bank of $12 V$
  batteries with total energy storage of $2.0 times 10^7 J$.
]

#solution[
  + If the electric motor draws $8.0 "kW"$, what is the
  current delivered to the motor?
  $
    P = V I \
    I = P / V \
    I = (8 times 10^3) / 12 \
    &= 666.67 A
  $

  + If the electric motors draws $8.0 "kW"$ as the car moves
  at a steady speed of $200 m / s$, how far will the car
  travel before it is “out of juice”?
  $
    P = E / t \
    t = E / P \
    &= (2 times 10^7) / (8 times 10^3) \
    2500 s \
    d = 200 times 2500 = 500,000 m
  $
]

= Direct Current Circuits

== Application

#exercise[
  In the figure, resistances are $R_1 = 1.0 Omega$ and $R_2 = 2.0 Omega$, and the ideal batteries have eMFS $epsilon_1 = 2.0 V$, $epsilon_2 = epsilon_3 = 4.0 V$. Use kirchofs law junction and current rules to find.
]

#solution[
  + Size and direction of the current in battery 1
    $$

  + Size and direction of the current in battery 2
    $$

  + Size and direction of the current in battery 3
    $$
]

#exercise[
  An RC-Circuit with $R = 90 Omega$, $C = 0.2F$ is hooked up to a battery with $V = 5V$. We are going to charge the capacitor.
]

#solution[
  + Find the time constant $tau$ of the circuit
  + When $tau = tau$ what is the value of the voltage across the capacitor.
]

= Magnetic Fields

== Application

#exercise[
  In the figure below, a particle moves along a circle in a region of uniform magnetic field $B = 2.5 mu T$. The particle has a charge of
  magnitude $q = 1.6 times 10^(-19) C$ and it experiences a force of magnitude $F = 8 times 10^(-19) N$
]

#solution[
  + Draw the direction of the magnetic force in the figure below.
  + Is the charged particle a proton or an electron? Explain
  + Find the particle speed.
  + Find the radius of the circle.
]

#exercise[
  A wire 50 cm long carries a 1.20 A current in the positive direction of a y axis through a magnetic field $B = 6 T arrow(i) + 10 T arrow(K)$
]

#solution[
  + Find the force on the wire in unit-vector notation.
]

= Magnetic fields due to currents

= Induction and Inductance

#exercise[
  A circular wire loop with a radius of 20 cm is in a constant magnetic field of $0.5 T$.
]

#solution[
  + What is the flux through the loop if the normal to the loop makes an angle of 300 with the magnetic field?
  + The magnetic field increases from 0.5 T to 2.5 T in 0.8 seconds. What is the average emf, $epsilon (t)$ induced in the loop.
]

#exercise[
  A coil consists of 200 turns of wire. Each turn is a square of side $d = 18 "cm"$,
  and a uniform magnetic field directed perpendicular to the plane of the coil is
  turned on.
]

#solution[
  + If the field changes linearly from $0$ to $0.5 T$ in $0.8 s$, what is the
  magnitude of the induced emf in the coil while the field is changing?
]

#exercise[
  The magnetic flux through the loop shown in the figure below
  increases according to the relation ɸB = 6.0t 2 + 7.0t, where ɸB is
  in milliwebers and t is in seconds.
]

#solution[
  + What is the magnitude of the emf induced in the loop when $t = 2.0 s$?
]

#exercise[
  The generator coil shown in Figure 23.20 is rotated through one-fourth of a revolution (from $theta = 0 deg$ to $theta = 90 deg$) in 15.0 ms.
  The 200-turn circular has a $5.00 "cm"$ radius and is in a uniform $1.25 T$ magnetic field.
]

#solution[
  + What is the average emf induced?
]
