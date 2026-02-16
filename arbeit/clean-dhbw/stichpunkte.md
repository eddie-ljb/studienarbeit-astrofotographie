# 📌 **2.1 Physikalische Grundlagen – Struktur in Stichpunkten**

---

## 🔹 1. Einführung: Physikalische Limitierungen der Astrofotografie

* Astrofotografie = Detektion elektromagnetischer Strahlung entfernter Quellen

* Bildqualität physikalisch begrenzt durch:

  1. Optische Geometrie
  2. Wellenoptik (Beugung)
  3. Atmosphärische Turbulenz
  4. Photonenstatistik

* Informatik kann nur innerhalb dieser Grenzen operieren

**Quelle:**
Schroeder (2000); Goodman (2005)

---

## 🔹 2. Lichtsammlung und Apertur

### Definition:

* Apertur (D) = Durchmesser der lichtsammelnden Öffnung
* Sammelfläche:
  [
  A = \pi \left(\frac{D}{2}\right)^2
  ]

### Wichtige Ableitung:

* Photonenzahl (N \propto D^2)
* Verdopplung von D → 4-fache Photonenmenge

### Bedeutung:

* Beeinflusst Signal-Rausch-Verhältnis
* Beeinflusst NICHT direkt die geometrische Auflösung

**Quellen:**
Schroeder (2000)
Karttunen et al. (2017)

---

## 🔹 3. Wellenoptik und Beugungsgrenze

### Begriffseinführung:

* Licht = elektromagnetische Welle
* Beugung = Wellenphänomen bei endlicher Apertur
* Punktquelle erzeugt Airy-Muster

### Airy-Disk:

* Zentrales Intensitätsmaximum
* Ringstruktur durch Fourier-Transformation der Apertur

**Quelle:**
Born & Wolf (1999)
Goodman (2005)

---

### Rayleigh-Kriterium

Definition:

* Zwei Punktquellen auflösbar, wenn Maximum der einen im ersten Minimum der anderen liegt

Formel:
[
\theta = 1.22 \frac{\lambda}{D}
]

Erklärung der Variablen:

* (\lambda) = Wellenlänge
* (D) = Apertur
* (\theta) = minimale Winkelauflösung

### Rechenbeispiel:

* (\lambda = 550 \text{ nm})
* (D = 0{,}2) m
* Umrechnung Radiant → Bogensekunden

Ergebnis: ≈ 0,69″

### Interpretation:

* Absolute physikalische Grenze
* Nicht durch Stacking überwindbar

**Quellen:**
Rayleigh (1879)
Goodman (2005)

---

## 🔹 4. Atmosphärische Turbulenz (Seeing)

### Begriffseinführung:

* Atmosphäre = inhomogenes Medium
* Temperatur- und Druckschwankungen → Brechungsindexänderungen
* Wellenfrontverzerrung

### Theoretischer Hintergrund:

* Kolmogorov-Turbulenzmodell
* Phasenstörungen

**Quelle:**
Tatarskii (1961)

---

### Fried-Parameter (r_0)

Definition:

* Kohärenzlänge der Wellenfront
* Maß für atmosphärische Qualität

Formel:
[
\theta_{seeing} \approx \frac{\lambda}{r_0}
]

### Typische Werte:

* Seeing 1″–3″ in Mitteleuropa

### Kernaussage:

* Für (D > r_0) ist Atmosphäre limitierend
* Beugungsgrenze meist nicht praktisch relevant

**Quellen:**
Roddier (1999)
Tokovinin (2002)

---

## 🔹 5. Photonenstatistik (Shot Noise)

### Begriffseinführung:

* Licht = diskrete Photonen
* Photonenzählung = stochastischer Prozess

### Wahrscheinlichkeitsverteilung:

* Poisson-Verteilung

Eigenschaft:
[
\sigma = \sqrt{N}
]

### Signal-Rausch-Verhältnis:

[
SNR = \frac{N}{\sqrt{N}} = \sqrt{N}
]

### Wichtige Schlussfolgerung:

* SNR wächst nur mit √N
* Verdopplung des SNR → 4× Photonen

### Bedeutung:

* Fundamentale Grenze
* Grundlage für Stacking-Theorie

**Quellen:**
Howell (2006)
Janesick (2001)

---

## 🔹 6. Weitere physikalische Rauschquellen

* Dunkelstrom (thermisch)
* Ausleserauschen
* Quanteneffizienz

Modell:
[
\sigma_{gesamt}^2 = \sigma_{shot}^2 + \sigma_{read}^2 + \sigma_{dark}^2
]

Bedeutung:

* Limitierung bei schwachen Objekten

**Quelle:**
Holst & Lomheim (2011)

---

## 🔹 7. Physikalische Gesamtsynthese

Physikalische Grenzen:

1. Beugungsbegrenzung (deterministisch)
2. Seeing (stochastisch)
3. Photonenstatistik (quantenmechanisch)

Wichtige Argumentation für deine Arbeit:

* Stacking reduziert statistische Fluktuationen
* Stacking überschreitet keine Beugungsgrenze
* Stacking kompensiert kein schlechtes Seeing vollständig
* Informationstheoretisch: Keine Rekonstruktion nicht gemessener Information

---

# 📚 Vollständige Literaturangaben

Born, M.; Wolf, E. (1999): *Principles of Optics*. Cambridge University Press.
Goodman, J. W. (2005): *Introduction to Fourier Optics*. Roberts & Company.
Howell, S. B. (2006): *Handbook of CCD Astronomy*. Cambridge University Press.
Holst, G. C.; Lomheim, T. S. (2011): *CMOS/CCD Sensors and Camera Systems*. SPIE Press.
Janesick, J. (2001): *Scientific Charge-Coupled Devices*. SPIE Press.
Karttunen, H. et al. (2017): *Fundamental Astronomy*. Springer.
Rayleigh, Lord (1879): Investigations in optics. *Philosophical Magazine*.
Roddier, F. (1999): *Adaptive Optics in Astronomy*. Cambridge University Press.
Schroeder, D. J. (2000): *Astronomical Optics*. Academic Press.
Tatarskii, V. I. (1961): *Wave Propagation in a Turbulent Medium*.
Tokovinin, A. (2002): From Differential Image Motion to Seeing. *PASP*.

