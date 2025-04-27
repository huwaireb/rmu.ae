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

== Understanding
Linear charge density is represented by $lambda = Q / L$ \
Surface charge density is represented by $sigma = Q / A$ \
Volume charge density is represented by $rho = Q / r$ \

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
      arrow(F_3) = ( -9.26 times 10^(-5) times 0.35 / 0.41 - 3.86 times 10^(-4) times 0.35 / 0.44) arrow(i) \
      + (9.26 times 10^(-5) times 0.22 / 0.41 - 3.86 times 10^(-4) times 0.26 / 0.44) arrow(j) \
      &= ( -3.86 times 10^(-4) arrow(i) - 1.78 times 10^(-4) arrow(j) ) N \
      tan^(-1) frac(f_"3y", f_"3x") = 24.76 + 180 deg = 204.8 deg \
    $
]

= Electric Fields

== Application

= Gauss Law

== Application

#exercise[
  Figure 23-35 shows a closed Gaussian surface in the shape of a cube of edge length $2.00 m$,
  with one corner at $x_1 = 5.00 m$, $y_1 = 4.00 m$. The cube lies in a region where the electric
  field vector is given by $arrow(E) = -3.00i - 4.00y^2 j + 3.00k N / C$, with y in meters.
]

#solution[
  + What is the net charge contained by the cube
    $
      phi = integral arrow(E) dot d arrow(A) \
      sum phi_x = 0, sum phi_z = 0 \
      arrow(E) = -4y^2 j \
      arrow(E_"right") = -4 times 4^2 j \
      &= -64 j \
      phi_"right" = integral E dot "dA" cos(theta) \
      &= -64 integral "dA" cos(180deg) = -64 A = -64 (2^2) = -256 frac("Nm^2", C) \
      arrow(E_"left") = -4 times 2^2 j \
      &= -16 j \
      phi_"left" = 16 times integral "dA" cos(0deg) \
      &= 16 times 2^2 = 64 frac("Nm^2", C) \
      phi = 64 - 256 = -192 frac("Nm^2", C) \
      q_"enc" = epsilon_0 times phi \
      &= 8.85 times 10^(-12) times -192 = -1.7 times 10^(-9) C
    $
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

#exercise[
  Problem 4 Previous Final exam, filled capacitor with $C = 2 times 10^(-12) F$, $d = 4.425 times 10^(-2) m$, $V = 8.85 V$
]

#solution[
  + Find E
    $
      E = Delta V / d = 8.85 / (4.425 times 10^(-2)) \
      &= 200 V / m
    $

  + Find the surface charge density
    $
      E = sigma / epsilon_0 \
      sigma = E times epsilon_0 = 200 times 8.85 times 10^(-12) \
      &= 1.77 times 10^(-9) C / m^2
    $

  + Area of each plate
    $
      C = frac(epsilon_0 times A, d) \
      A = frac(C times d, epsilon_0) \
      &= frac(2 times 10^(-12) times 4.425 times 10^(-2), 8.85 times 10^(-12)) \
      &= 0.01 m^2
    $

  + Charge on each plate
    $
      Q = C times Delta V \
      &= 2 times 10^(-12) times 8.85 = 1.77 times 10^(-11) C
    $

  + Part 2: Given strength of air = $3 times 10^6 V / m$. Find the minimum distance (before dielectric constant breakdown)
    $
      E <= 3 times 10^6 \
      Delta V / d <= 3 times 10^6 \
      8.85 / 3 times 10^6 <= d \
      0.00000295 <= d m
    $

  + if $k = 6$, battery is still connected, find C, Q, and $Delta V$
    $
      C = k times C_0 = 6 times 2 times (10^(-12)) \
      &= 1.2 times 10^(-11) F \
      Q = 10^(-11) times 8.85 = 8.85 times 10^(-11) C \
      &= 1.062 * 10^(-10) C \
      V_"before" = V_"after"
    $
]

= Current and Resistance

== Understanding

$ P = "Energy" / t $

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

== Understanding

$tau = "RC"$, with the unit seconds.

There's two variants of finding the charge or voltage or current at a point in time.

E.g for charge,
$q = q_0(1 - e^(-t / tau))$ is used in charging or growth situation.
$q = q_0 e^(-t / tau)$ is used in discharging or decay situations

== Application

#exercise[
  Previous Final Kirchoff
]

#solution[
  + Find the unknown currents, $I_1$, $I_2$, $I_3$
    $
      sum I_"in" = sum I_"out" \
      I_1 + I_3 = I_2 \
      Delta V = +9 - 1I_1 - 1I_1 - 4I_2 - 6 \
      &= 3 - 2I_1 - 4I_2 = 0 \
      Delta V = +3 - 5I_3 - 4I_2 - 6 \
      &= -5I_3 - 4I_2 - 3 = 0 \
      3 - 4I_2 = 2I_1 \
      1.5 - 2I_2 = I_1 \
      -4I_2 - 3 = 5I_3 \
      -0.8 I_2 - 0.6 = I_3 \
      -0.8I_2 - 0.6 + 1.5 - 2I_2 = I_2 \
      0.9 - 2.8I_2 = I_2 \
      0.9 = 3.8I_2 \
      I_2 = 0.236 A \
      I_1 = 1.5 - 2(0.236) = 1.028 A \
      I_3 = -0.8(0.236) - 0.6 = -0.7888 A
    $
]

#exercise[
  Given $Delta V = 20 V$, $C = 5 times 10^(-3) F$, $R = 10 "ohms"$, discharging
]

#solution[
  + Find the initial charge
    $
      q_0 = C times delta V = 5 times 10^(-3) times 20 = 0.1 C \
    $

  + Find q at $t = 10 "ms"$
    $
      tau = R times C = 10 times 5 times 10^(-3) \
      &= 0.05 s \
      q = q_0 e^(-t / tau) \
      &= 0.1 e^(-(10 times 10^(-3)) / 0.05) \
      &= 0.032 C \
    $

  + Find v at $t = 10 "ms"$
    $
      tau = 0.05 s \
      v_c = epsilon times e^(-t / tau) \
      &= 20 times e^(-(10 times 10^(-3) / 0.05)) \
      &= 16.4 V
    $

  + If the capacitor was later charged, find q at 10 ms
    $
      tau = 0.05 s \
      q = q_0 (1 - e^(-t / tau)) \
      &= 0.1 (1 - e^(-(10 times 10^(-3)) / 0.05)) \
      &= 0.018 C \
    $

  + If the capacitor was later charged, Find v at 10 ms
    $
      tau = 0.05 s \
      v_c = epsilon times (1 - e^(-t / tau)) \
      &= 20 times (1 - e^(-(10 times 10^(-3) / 0.05))) \
      &= 3.63 V
    $
]

#exercise[
  An RC-Circuit with $R = 90 Omega$, $C = 0.2F$ is hooked up to a battery with $V = 5V$. We are going to charge the capacitor.
]

#solution[
  + Find the time constant $tau$ of the circuit
    $
      tau = R times C = 90 times 0.2 = 18 s
    $

  + When $t = tau$ what is the value of the voltage across the capacitor.
    $
      v_c = epsilon (1 - e^(-t / tau)) \
      &= 5 (1 - e^(-10 / 10)) \
      &= 3.16 V
    $
]

#exercise[
  Consider a capacitor of capacitance C that is being discharged through a resistor of resistance
  R as shown in the Active Figure 28.16 C
]

#solution[
  + After how many time constants is the charge on the capacitor one fourth of its initial value?
    $
      Q_0 / 4 = Q_0 times e^(-t / tau) \
      1 / 4 = e^(-t / tau) \
      ln(1 / 4) = -t / tau \
      -t / tau = -1.38 \
      t / tau = 1.38
    $
  + The energy stored in the capacitor decreases with time as capacitance discharges. After how many
  time constants is the stored energy one fourth its initial value?
  $
    U(t) = 1 / 2 Q(t)^2 / C \
    &= frac(Q_0^2 times e^(-2t / tau), 2C) \
    U(0) = frac(1 / 2 Q_0^2, C) \
    U(t) = U_0 times e^(-2t / tau) \
    U(t) / 4 = U_0 times e^(-2t / tau) \
    1 / 4 = e^(-2t / tau) \
    -1.38 = -2t / tau \
    t / tau = 0.69
  $
]

= Magnetic Fields

== Understanding

=== Units
Magnetic fields use Tesla as their unit, expressed as T

common forms of Tesla,

$1 T = 10^4 G$ (Gauss)
$1 "mT" = 10^(-3) T$ (Militesla)

=== Magnitude of $F_B$

The magnitude of the magnetic force on a charged particle is $F_B = |q| v B sin(theta)$

- $theta$ is smaller angle between v and B
- $F_B$ is zero when the field and velocity are parallel or antiparallel
- Largest when $B$ and $V$ are perpendicular at $theta = 90 deg$

=== Magnetic Dipole Moment
Expressed as,
$mu = N i A$

=== Differences between electric and magnetic field

+ Direction of Force
  - The electric force acts aong the direction of electric field
  - The magnetic force acts perpendicular to the magnetic field

+ Motion
  - The electric force acts on a charged particular regardless of whether the particle is moving
  - THe magnetic force acts on a charged particle only when the particle is in motion

+ Work
  - THe electric force dose work in displacing a charged particle
  - The magnetic force is associated with a steady magnetic field that does no work when a particle is displaced.

=== Lorentz Force
Charged particles commonly move in both magnetic and electric fields.
In that case, the total force is the sum of forces due to the individual fields.

$
  F = q arrow(E) + q [arrow(V) times arrow(B)]
$

In the case

== Application

#exercise[
  In the figure below, a particle moves along a circle in a region of uniform magnetic field $B = 2.5 mu T$. The particle has a charge of
  magnitude $q = 1.6 times 10^(-19) C$ and it experiences a force of magnitude $F = 8 times 10^(-19) N$
]

#solution[
  + Draw the direction of the magnetic force in the figure below.
    Towards center, as its a centriputal force

  + Is the charged particle a proton or an electron? Explain
    Electron, this is based on right hand rule. If it were to be a proton the magnetic force would point to the left
    not aliging with it being a centriputal force.

  + Find the particle speed.
    $
      arrow(F_B) = q V times arrow(B) \
      F_B = q V B times sin(90 deg) \
      V = frac(
        F_B, q times B \
        &= frac(8 times 10^(-19), 1.6 times 10^(-19) times 2.5 times 10^(-6))
      ) \
    $

  + Find the radius of the circle.
    $
      F_B = frac(m v^2, r) \
      r = frac(m v^2, F_b) \
    $
]

#exercise[
  A uniform magnetic field of magnitude of $0.150 T$ is
  directed along the $+x$ axis. A positron moving at $5.00 times
  10^6 m / s$ enters the field along a direction that makes an
  angle of $85 deg$ with the $x$ axis. The motion of the trajectory
  is expected to be a helix.
]

#solution[
  + Calculate the radius of the trajectory
    #note[Given a non-perpendicular angle. We need to use v⊥]
    $
      F_B = (1.6 times 10^(-19))(5 times 10^6)(0.15) sin(85deg) \
      &= 1.19544 times 10^(-13) N \
      v⊥ = 5 times 10^6 sin(85deg) \
      &= 4.981 times 10^6 "m/s" \
      r = frac("mv⊥", q B) \
      &= frac(9.1 times 10^(-31) times 4.981 times 10^6, 1.6 times 10^(-19) times 0.15) \
      &= 1.88 times 10^(-4) m
    $
]

#exercise[
  A wire 50 cm long carries a 1.20 A current in the positive direction of a y axis through a magnetic field $B = 6 T arrow(i) + 10 T arrow(K)$
]

#solution[
  + Find the force on the wire in unit-vector notation.
    $
      arrow(F_B) = I arrow(L) times arrow(B) \
      &= 1.2[(0.5 j) times (6 arrow(i) + 10 arrow(k))] \
      mat(delim: "[", arrow(i), arrow(j), arrow(k); 0, 0.5, 0; 6, 0, 10) \
      &= mat(delim: "[", 0.5, 0; 0, 10) arrow(i) - mat(delim: "[", 0, 6; 0, 10) arrow(j) + mat(delim: "[", 0, 6; 0.5, 0) arrow(k) \
      &= (5 - 0) arrow(i) - (0 - 0) arrow(j) + (0 - 3) arrow(k) \
      arrow(F_B) = 1.2(5 arrow(i) - 3 arrow(k)) \
      &= 6 arrow(i) - 3.6 arrow(k)
    $
]

#exercise[
  An electric field of $1.5 "kV" / m$ and a perpendicular magnetic field $0.400 T$ act on a moving electron to
  produce no net force. (Lorentz Force)
]

#solution[
  + What is the electron speed?
    #note[Given the net forces cancel out, $F_E = F_B$]
    $
      1.5 times 1000 = 1500 V / m \
      F_E = q E \
      F_B = q V B \
      F_E = F_B \
      q E = q v B \
      E = v B \
      v = E / B = 1500, 0.400 = 3750 m / s
    $
]

#exercise[
  An electron has an initial velocity of $(12.0 arrow(j) + 15 arrow(k)) "km" / s$ and a constant acceleration of $(2 times 10^(12)) arrow(i)$
  in a region in which uniform electric field and magnetic field are present. If $arrow(B) = (400 mu T) arrow(i)$. (Lorentz)
]

#solution[
  + Find the electric field $arrow(E)$
    $
      F = q E + q [arrow(v) times arrow(B)] = m arrow(a) \
      arrow(E) = frac(m arrow(a) - q[arrow(v) times arrow(B)], q) \
      q = - 1.6 times 10^(-19) C \
      m = 9.11 times 10^(-31) "kg" \
      arrow(v) times arrow(B) =
      mat(delim: "[", arrow(i), arrow(j), arrow(k); 0, 12 times 10^3, 15 times 10^3; 4 times 10^(-6), 0, 0) \
      = mat(delim: "[", 12 times 10^3, 15 times 10^3; 0, 0) arrow(i) - mat(delim: "[", 0, 15 times 10^3; 4 times 10^(-6), 0) arrow(j) + mat(delim: "[", 0, 12 times 10^3; 4 times 10^(-6), 0) arrow(k) \
      = (0 - 0) arrow(i) - (0 - 4 times 10^(-6) ) + (0 - 0.048) arrow(k)
      = 0.06 arrow(j) - 0.048 arrow(k) \
      frac(m arrow(a), q) =
      frac((1.822 times 10^(-18)) arrow(i), -1.6 times 10^(-19)) \
      = -11.3875 N / C \
      frac(m arrow(a), q) - arrow(v) times arrow(B) =
      -11.3875 arrow(i) - 0.06 arrow(j) + 0.048 arrow(k) N / C
    $
]

#exercise[
  A circular wire loop of radius $15 "cm"$ carries a current of $2.6 A$. It is placed so that the normal to its plane
  makes an angle of $41 deg$ with a uniform magnetic field of magnitude $12 T$
]

#solution[
  + Calculate the magnitude of the magnetic dipole moment of the loop
    $
      mu = N times i times A \
      &= (1)(2.6)(pi times 0.15^2) \
      &= 0.18 A m^2
    $

  + What is the magnitude of the torque acting on the loop
    $
      tau = mu B sin(theta) \
      &= 0.18 times 12 times sin(41) = 1.45 "Nm"
    $
]

#exercise[
  Final Exam Problem 1
  $
    q = 1.6 times 10^(-19) C, arrow(v) = (10 arrow(i) + 5 arrow(j) - arrow(k)) "m/s" \
    arrow(B) = 2 arrow(i) + arrow(j) - arrow(k) T, arrow(E) = 4 arrow(i) - 2 arrow(j) + 3 arrow(k) V / m
  $
]

#solution[
  + Find $F_"net"$
    $
      arrow(F_"net") = F_B + F_E \
      &= q v times B + q E \
      &= q [ v times B + E ] \
      &= 1.6 times 10^(-19) (6 arrow(j) + 3 arrow(k)) N
    $
]

= Magnetic fields due to currents

== Understanding


=== Biot-Savart

- $arrow("dB")$ is perpendicular, $theta = 90 deg$, to both ds and the unit vector $r$ directed from ds towards P
- The magnitude of B is inversely propotional to $r^2$, where r is the distance from ds to P
- The magnitude of dB is propotional to the current and to the magnitued of dsto the length of element ds
- The magnitude of dB is propotional to $sin(theta)$, where $theta$ is the angle between vectors ds and r.

$
  d arrow(B) = frac(mu_0, 4pi) frac(I d arrow(s) times arrow(r), r^2)
$

The constant $mu_0$ is called permeability of free space

Essentially,
Biot-Savart is an expression that gives B at some point in space in terms of the current that carries the field.

=== Ampere Laws

The product B.ds can be evaluated for small length
elements ds on the circular path defined by the compass
needles for the long straight wire.

Ampere’s law states that the line integral of B.ds around
any closed path equals $mu_0 I$ where I is the total steady
current passing through any surface bounded by the
closed path:

Essentially stating,
$integral.cont arrow(B) dot d arrow(s)$ around any closed path equals $μ_0 I$

Describing the creation of magnetic fields by all continous current magnetic fields.

== Application

#exercise[
  Consider a thin-straight wire carrying a constant current I and placed
  along the x-axis as shown below.
]

#solution[
  + Determine the magnitude and direction of the magnetic field at point P due to this current
    Out of the page, as the currnt points to the right
    $
      B_"wire" = frac(mu_0 I, 2 pi alpha)
    $
]

#exercise[
  The two wires shown in the figure carry currents of 5.00 A in opposite
  directions and are separated by 10.0 cm.

  Find the direction and magnitude of the net magnetic field
]

#solution[
  + At a point midway between the wires
    $$

  + At point P1 (10.0 cm to the right of the wire on the right)
    $$

  + At point P2 (20.0 cm to the left of the wire on the left).
    $$
]

#exercise[
  A wire carries a 7.00 A current along the x axis and another wire carries a
  6.00-A current along the y axis as shown in the figure.
]

#solution[
  + What is the magnetic field at point P located at $x = 4.00 m, y = 3.00 m$?
    $$
]

#exercise[
  In the figure below, the current in the long straight wire is I1=5.00A and the
  wire lies in the plane of the rectangular loop, which carries a current I2 =
  10.0A. The dimensions are c = 0.100m, a = 0.150m, and l = 0.450m.
]

#solution[
  + Find the magnitude and direction of the net force exerted on the loop by the magnetic field created by the wire.
    $$
]

#exercise[
  What current is required in the windings of a long
  solenoid that has 1000 turns uniformly distributed over a
  length of 0.400 m to produce at the center of the solenoid
  a magnetic field of magnitude $1.00 times 10^44 T$?
]

#solution[
  + Required current
    $$
]

#exercise[
  Two circular loops are parallel, coaxial, and almost in
  contact, 0.100 mm apart. Each loop is 10.0 cm in radius.
  The top loop carries a clockwise current of 140 A. The
  bottom loop carries a counterclockwise current of 140 A.
]

#solution[
  + Calculate the magnetic force exerted by the bottom loop on the top loop.
    $$

  + The upper loop has a mass of 0.021 kg. Calculate its acceleration, assuming the only forces acting on it are the the force in part a) and the gravitational force.
    $$
]

#exercise[
  A long straight wire of radius R carries a steady current I
  that is uniformly distributed through the cross section of
  the wire.
]

#solution[
  + Calculate the magnetic field a distance r from the center of the wire in the region $r ≥ R "and" r < R$.
    $$
]

#exercise[
  The magnetic coils of a tokamak fusion reactor are in the shape of a toroid
  having an inner radius of 0.700 m and an outer radius of 1.30m. The toroid has 900
  turns of large diameter wire, each of which carries a current of 1.40kA.
  Find the magnitude of the magnetic field inside the toroid along
]

#solution[
  + the inner radius
    $$
  + the outer radius
    $$
]

#exercise[
  Consider the hemispherical closed surface in the figure below. The hemisphere is in a uniform magnetic
  field that makes an angle with the vertical. Calculate the magnetic flux through
]

#solution[
  + The flat surface S1
    $$
  + The hemispherical surface S2
    $$
]


= Induction and Inductance

== Application

#exercise[
  A circular wire loop with a radius of 20 cm is in a constant magnetic field of $0.5 T$.
]

#solution[
  + What is the flux through the loop if the normal to the loop makes an angle of $30 deg$ with the magnetic field?
    #note[
      Plane of the loop you use $sin(theta)$
      Normal to the loop you use $cos(theta)$
    ]
    $
      phi = integral arrow(B) times d arrow(A) \
      &= integral B times "dA" cos(30deg) \
      &= 0.5 cos(30deg) times A = 0.5 cos(30deg) times pi r^2 \
      &= 0.5 cos(30deg) times 0.2^2 pi = 0.05 "Wb"
    $

  + The magnetic field increases from 0.5 T to 2.5 T in 0.8 seconds. What is the average emf, $epsilon (t)$ induced in the loop.
    #note[
      - When working with $epsilon$, and they tell you average, use $epsilon = - N frac(Delta phi, Delta t)$
      - Number of turns for a single loop is just 1, so NN= 1
    ]
    $
      epsilon = - 1 frac(Delta phi, Delta t) \
      &= -1 frac((2.5 cos(30 deg) times 0.2^2 pi) - (0.05), 0.8) \
      &= -0.277 V
    $
]

#exercise[
  A coil consists of 200 turns of wire. Each turn is a square of side $d = 18 "cm"$,
  and a uniform magnetic field directed perpendicular to the plane of the coil is
  turned on.
]

#solution[
  + If the field changes linearly from $0$ to $0.5 T$ in $0.8 s$, what is the
  magnitude of the induced emf in the coil while the field is changing?
  $
    epsilon = -N times A times frac(Delta B, Delta t) \
    &= 200 times (0.18)^2 times frac(0.5, 0.8) \
    &= -4.05 V = 4.05 V \
  $
]

#exercise[
  The magnetic flux through the loop shown in the figure below
  increases according to the relation $phi_B = 6.0t^2 + 7.0t$, where ɸB is
  in milliwebers and t is in seconds.
]

#solution[
  + What is the magnitude of the emf induced in the loop when $t = 2.0 s$?
    $
      epsilon = N times frac(d phi, "dt") phi_b(t) \
      &= 1 times 12t + 7 = 12(2) + 7 times 10^(-3) \
      &= 0.031 V
    $
]

#exercise[
  The generator coil shown in Figure 23.20 is rotated through one-fourth of a revolution (from $theta = 0 deg$ to $theta = 90 deg$) in 15.0 ms.
  The 200-turn circular has a $5.00 "cm"$ radius and is in a uniform $1.25 T$ magnetic field.
]

#solution[
  + What is the average emf induced?
    $
      epsilon_"avg" = N times frac(Delta phi, Delta T) \
      phi = integral arrow(B) times d arrow(A) cos(theta) deg \
      phi_"initial" = 1.25 (0.05^2 pi) cos(0deg) = 0.0098 "Wb" \
      phi_"final" = 1.25(0.05^2 pi) cos(90deg) = 0 \
      epsilon_"avg" = - 200 times frac(-0.0098, 0.015) \
      &= 130.6 V
    $
]
