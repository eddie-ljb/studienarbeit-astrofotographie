#import "@preview/clean-dhbw:0.3.1": *
#import "glossary.typ": glossary-entries

#show: clean-dhbw.with(
  title: "Grenzen der Astrofotografie",
  authors: (
    (name: "Etienne Luke Josef Bader", student-id: "9578543", course: "TINF23B2", course-of-studies: "Informatik", company: (
      (name: "Atruvia AG", post-code: "76227", city: "Karlsruhe")
    )),
    (name: "Timo Kochanski", student-id: "8249833", course: "TINF23B2", course-of-studies: "Informatik", company: (
      (name: "Atruvia AG", post-code: "76227", city: "Karlsruhe")
    ))
    // (name: "Juan Pérez", student-id: "1234567", course: "TIM21", course-of-studies: "Mobile Computer Science", company: (
    //   (name: "ABC S.L.", post-code: "08005", city: "Barcelona", country: "Spain")
    // )),
  ),
  type-of-thesis: "Studienarbeit",
  at-university: false, // if true the company name on the title page and the confidentiality statement are hidden
  bibliography: bibliography("sources.bib"),
  date: datetime.today(),
  glossary: glossary-entries, // displays the glossary terms defined in "glossary.typ"
  language: "de", // en, de
  supervisor: (university: "Prof. Dr. Ralph Lausen"),
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Karlsruhe",
  university-short: "DHBW",
  // for more options check the package documentation (https://typst.app/universe/package/clean-dhbw)
)

// Edit this content to your liking

= Einleitung

Die Faszination für das Universum hat die Menschheit schon seit Jahrhunderten begleitet. Mit der rasanten Entwicklung von Technologie und Wissenschaft im 20. und 21. Jahrhundert ist das Beobachten und Festhalten von Himmelsereignissen jedoch für eine breitere Masse zugänglich geworden. Insbesondere die Astrofotografie, eine Verbindung aus Astronomie, Fotografie und zunehmend Informatik, ermöglicht es, die Schönheit und die Geheimnisse des Nachthimmels sichtbar zu machen. Amateure wie auch professionelle Astrofotografen haben heute Zugriff auf leistungsstarke optische Geräte, spezialisierte Software und bildverarbeitende Algorithmen, um Objekte wie Galaxien, Nebel und Sternhaufen in ungeahnter Qualität abzubilden. Dennoch ist die Astrofotografie kein triviales Hobby, sondern erfordert eine sorgfältige Planung, eine solide technische Ausstattung und ein tiefes Verständnis der physikalischen und informatischen Hintergründe.

Die Astrofotografie vereint klassisches Handwerk und moderne Technologie. Dabei ist sie besonderen Herausforderungen ausgesetzt, wie etwa der Lichtverschmutzung, atmosphärischen Turbulenzen, der Eigenrotation der Erde und der photometrischen Schwächen der Kamera. Solche Grenzen zu überwinden, erfordert nicht nur optimierte physikalische Geräte, sondern auch die Entwicklung und Anwendung leistungsstarker Bildbearbeitungstechniken. Besonders der Prozess des „Stackings“, bei dem mehrere Bilder übereinandergelegt und analysiert werden, steht im Zentrum vieler technischer Fortschritte und zeigt einmal mehr, dass die Verschmelzung von Informatik und Astronomie neue Türen öffnen kann. Diese Arbeit widmet sich den theoretischen und praktischen Herausforderungen, die mit der Astrofotografie einhergehen, und legt einen besonderen Fokus auf die Rolle von Stacking-Algorithmen.

== Astrofotografie als interdisziplinäre Schnittstelle

Die Astrofotografie stellt seit Jahrzehnten eine zentrale Methode zur Beobachtung und Dokumentation astronomischer Objekte dar. Visuelle Beobachtungen mit dem bloßen Auge oder durch optische Instrumente sind durch die physiologischen Grenzen des menschlichen Sehsinns stark eingeschränkt. Die fotografische Erfassung elektromagnetischer Strahlung ermöglicht hingegen eine wesentlich tiefere und reproduzierbare Analyse des Universums. Insbesondere durch die Möglichkeit, Licht über lange Zeiträume zu integrieren und anschließend algorithmisch auszuwerten, können Objekte sichtbar gemacht werden, deren Intensität weit unterhalb der Wahrnehmungsschwelle des menschlichen Auges liegt.

Im Zuge der zunehmenden Digitalisierung astronomischer Beobachtungen hat sich die Astrofotografie von einer primär handwerklich geprägten Disziplin zu einem hochgradig interdisziplinären Forschungsfeld entwickelt. Die moderne Astrofotografie ist ein interdisziplinäres Gebiet, das Erkenntnisse aus verschiedenen Fachgebieten wie der Astrophysik, der Optik, der Elektrotechnik und in besonderem Maße der Informatik vereint. Digitale Bildsensoren, leistungsfähige Rechensysteme und komplexe Bildverarbeitungsalgorithmen bilden gegenwärtig die Grundlage sowohl professioneller astronomischer Forschung als auch ambitionierter Amateurprojekte.

Aus informatischer Perspektive ist die Astrofotografie von besonderem Interesse, da sie eine Vielzahl klassischer und moderner Problemstellungen der digitalen Signal- und Bildverarbeitung in einem realen, physikalisch stark eingeschränkten Kontext vereint. Hierzu zählen insbesondere die Rauschunterdrückung, die Bildregistrierung, die Rekonstruktion unter unvollständigen oder fehlerbehafteten Daten sowie die algorithmische Optimierung des Signal-Rausch-Verhältnisses. Diese Aspekte machen die Astrofotografie zu einem anschaulichen Anwendungsfeld für theoretische Konzepte der Informatik.

== Technische und physikalische Herausforderungen

Trotz erheblicher technologischer Fortschritte unterliegt die Astrofotografie fundamentalen physikalischen und technischen Grenzen. Die beobachteten Objekte befinden sich in äußerst großen Entfernungen, was zu einer signifikant geringeren Strahlungsintensität führt. Gleichzeitig ist zu berücksichtigen, dass zahlreiche Störfaktoren auf das aufgenommene Signal einwirken. Zu den genannten Störfaktoren zählen das unvermeidbare Quantenrauschen des Lichts, thermisches Rauschen der Sensoren, atmosphärische Turbulenzen (Seeing), Lichtverschmutzung sowie mechanische Ungenauigkeiten in der Nachführung der Teleskopmontierung.

Diese Einflüsse resultieren in einer signifikanten Beeinträchtigung des Signal-Rausch-Verhältnisses von Einzelaufnahmen astronomischer Objekte. Feinstrukturen, schwache Nebel oder entfernte Galaxien sind in Rohaufnahmen oft kaum oder gar nicht erkennbar. Eine einfache Erhöhung der Belichtungszeit ist nur bis zu einem gewissen Grad möglich, da lange Einzelbelichtungen die Auswirkungen von Nachführfehlern, atmosphärischen Schwankungen und Sättigungseffekten verstärken.

Die zentrale Herausforderung der Astrofotografie besteht somit darin, aus einer Vielzahl stark verrauschter, unvollkommener Einzelbilder ein möglichst informationsreiches Gesamtergebnis zu rekonstruieren. An dieser Stelle gewinnt die algorithmische Bildverarbeitung eine entscheidende Bedeutung.

== Image Stacking als Schlüsseltechnik

In der Astrofotografie stellt das sogenannte Image Stacking eine der wichtigsten und zugleich am weitesten verbreiteten Methoden zur Verbesserung der Bildqualität dar. Der Begriff "Stacking" beschreibt die technische Methode, mehrere Einzelaufnahmen desselben Himmelsobjekts zu einem gemeinsamen Bild zu kombinieren. Ziel dieser Technik ist es, das Nutzsignal zu verstärken und zufällige Störanteile zu reduzieren.

Die grundlegende Idee des Stackings beruht auf statistischen Prinzipien: Das astronomische Signal manifestiert sich in sämtlichen Einzelbildern als weitgehend konstant, wohingegen das Rauschen zufällige Schwankungen aufweist. Es wurde festgestellt, dass sich das Signal-Rausch-Verhältnis durch geeignete Kombination der Bilder – beispielsweise durch Mittelwert-, Median- oder gewichtete Verfahren – theoretisch um den Faktor √N verbessern lässt, wobei N die Anzahl der gestackten Aufnahmen bezeichnet. Diese einfache Beziehung verdeutlicht bereits, weshalb das sogenannte Stacking zu einem unverzichtbaren Werkzeug der Astrofotografie geworden ist.

In der praktischen Anwendung umfasst das sogenannte Image Stacking jedoch weit mehr als eine einfache mathematische Verknüpfung von Bildern. Moderne Stacking-Verfahren umfassen eine Vielzahl komplexer Schritte, wie beispielsweise die präzise Bildregistrierung, das Subpixel-Alignment, die Qualitätsbewertung einzelner Frames, die adaptive Gewichtung sowie die Berücksichtigung systematischer Fehler. Die vorliegende Problematik ist als anspruchsvolles algorithmisches Problem zu klassifizieren, das eine Vielzahl an Konzepten aus dem Fachgebiet der Informatik integriert.

== Relevanz von Stacking-Algorithmen

Aus der Perspektive der Informatik stellen Stacking-Algorithmen ein besonders relevantes Untersuchungsfeld dar, da sie sich an der Schnittstelle zwischen Theorie und Anwendung befinden. Einerseits beruhen sie auf mathematisch klar formulierbaren Modellen, etwa aus der Wahrscheinlichkeitstheorie, der linearen Algebra oder der Optimierung. Andererseits müssen sie unter realen Bedingungen funktionieren, die oft nicht ideal sind. In diesen Bedingungen sind Annahmen wie unabhängiges Rauschen oder perfekte Bildregistrierung nur näherungsweise erfüllt.

Ein weiterer Aspekt, der in diesem Zusammenhang zu berücksichtigen ist, ist die Tatsache, dass astronomische Bilddaten in der Regel sehr große Datenmengen umfassen. Die Verwendung von hochauflösenden Sensoren, die Durchführung langer Beobachtungsreihen sowie die Anwendung von Multikanalaufnahmen (beispielsweise in unterschiedlichen Wellenlängen) resultieren in signifikanten Anforderungen an die Rechenleistung und den Speicher. Effiziente Algorithmen, Parallelisierung und numerische Stabilität spielen demnach eine zentrale Rolle.

Eine Fragestellung von besonderem Interesse ist dabei die Untersuchung der Realisierbarkeit theoretischer Verbesserungen des Signal-Rausch-Verhältnisses in der Praxis. Obwohl mathematische Modelle oft eine nahezu beliebige Qualitätssteigerung durch Erhöhung der Bildanzahl suggerieren, zeigen reale Anwendungen, dass der Nutzen des Stackings ab einem bestimmten Punkt abnimmt. Diese Diskrepanz zwischen theoretischem Potenzial und praktischer Wirksamkeit verdeutlicht, dass Stacking-Algorithmen nicht isoliert betrachtet werden können, sondern stets im Kontext physikalischer, technischer und statistischer Randbedingungen analysiert werden müssen.

== Motivation zur Untersuchung der Grenzen des Stackings

Die in der Astrofotografie weitverbreitete Nutzung von Image Stacking führt in der Praxis häufig zu überhöhten Erwartungen an die Leistungsfähigkeit dieser Methode. Insbesondere im Amateurbereich wird Stacking häufig als universelle Lösung betrachtet, mit der sich nahezu beliebige Qualitätsdefizite kompensieren lassen. Diese Annahme verkennt jedoch die grundlegenden Grenzen, die durch Physik, Sensorik und mathematische Modelle gesetzt sind.

Aus wissenschaftlicher und informatischer Perspektive ist es daher von signifikanter Relevanz, die Grenzen des Stackings systematisch zu untersuchen. Zu den zu erörternden Fragestellungen zählt die Untersuchung der Bedingungen, unter denen eine zusätzliche Erhöhung der Bildanzahl keinen signifikanten Qualitätsgewinn mehr bewirken würde. Ein weiterer Punkt, der einer eingehenden Betrachtung unterliegt, ist die Rolle systematischer Fehler. Ein wesentlicher Aspekt ist zudem die Analyse der Fähigkeit von algorithmischen Verbesserungen, physikalische Limitierungen zu überwinden.

Die Motivation dieser Arbeit liegt demnach nicht allein in der Beschreibung etablierter Verfahren, sondern in einer kritischen Analyse ihrer Leistungsfähigkeit. Das Ziel besteht darin, ein realistisches Verständnis dafür zu entwickeln, welche Leistungen Stacking erbringen kann und wo seine prinzipiellen Grenzen liegen. Diese Erkenntnisse sind nicht nur für die Astrofotografie von Relevanz, sondern lassen sich auch auf andere Bereiche der Bildverarbeitung übertragen, in denen ähnliche inverse Probleme unter Rausch- und Datenbeschränkungen auftreten.

== Problemstellung

Astrofotografie erscheint zunächst als eine kreative Methode, den Nachthimmel fotografisch festzuhalten. Doch hinter den ästhetischen Bildern stehen anspruchsvolle technische und physikalische Prozesse. Die Erfassung von lichtschwachen Himmelsobjekten stellt Astrofotografen vor verschiedene Probleme: Von der optimalen optischen und fotografischen Ausrüstung bis hin zur nachträglichen Bildbearbeitung mit Algorithmen ist ein durchdachtes Zusammenspiel notwendig, um qualitativ hochwertige Ergebnisse zu erzielen.

Ein Hauptproblem ist die Aufnahme des schwachen Lichts von Sternen und Galaxien, das oft von störenden Einflüssen wie Lichtverschmutzung, atmosphärischem Flimmern („Seeing“) oder elektronischem Bildrauschen in den Sensoren beeinträchtigt wird. Hinzu kommt die Erdrotation, die bereits bei kurzen Belichtungszeiten zu einer Bewegungsunschärfe führt, wenn keine präzise Nachführtechnik eingesetzt wird. Stacking-Algorithmen, die aus mehreren Aufnahmen ein qualitativ verbessertes Gesamtbild berechnen, spielen hier eine Schlüsselrolle. Gleichzeitig sind deren praktische Anwendung und theoretische Funktion eng an die Dynamik von Datenanalyse, Bildverarbeitung und mathematischer Modellierung gekoppelt, was letztlich auch Grenzen aufzeigt: Sowohl die Rechenleistung aktueller Systeme als auch die Komplexität von Algorithmen stellt Informatiker und Astrofotografen vor Herausforderungen.

== Zielsetzung

Das Ziel dieser Studienarbeit ist es, die Grenzen der Astrofotografie aus einer interdisziplinären Perspektive zu analysieren. Dabei sollen sowohl physikalische als auch informatische Aspekte beleuchtet werden. Der Fokus liegt jedoch auf den theoretischen Grundlagen, insbesondere auf Stacking-Algorithmen, die die Qualität der Astrofotografie entscheidend beeinflussen. Die Arbeit wird zunächst die physikalischen Grenzen aufzeigen, beispielsweise die Abhängigkeit von Standortbedingungen und Ausrüstung. Anschließend folgt ein detaillierter Abschnitt über die theoretischen und praktischen Herausforderungen des Stackings, etwa die optimale Auswahl der Einzelbilder, die Algorithmen zur Rauschunterdrückung und der Verlust von Details durch mathematische Transformationen.

Ein weiteres Ziel ist es, die Risiken und Limitierungen der Astrofotografie zu verdeutlichen – von technischen Problemen wie Hardwareausfällen bis hin zu informatischen Schwierigkeiten wie der Skalierbarkeit von Algorithmen auf großen Datensätzen. Durch diese umfassende Analyse soll nicht nur ein tieferes Verständnis der Komplexität der Astrofotografie vermittelt, sondern auch ein wissenschaftlicher Beitrag zur Optimierung der bestehenden Verfahren geleistet werden.

== Risiken

Trotz der beeindruckenden technologischen Fortschritte bleibt die Astrofotografie eine Disziplin mit erheblichen Risiken, die sowohl praktische als auch theoretische Aspekte betreffen. Auf der praktischen Seite sind Astrofotografen häufig von der Umwelt abhängig: Eine unzureichende Positionierung des Teleskops und unerwartete Wetterumschwünge oder starke Lichtverschmutzung können die Bildqualität erheblich beeinträchtigen. Zudem kann unsachgemäßer Umgang mit der empfindlichen technischen Ausrüstung, wie Kamerasensoren und Teleskopoptik, zu Kosten und Frustration führen.

Auf der theoretischen Ebene sind die Risiken oft weniger sichtbar, aber nicht minder bedeutsam. Ein zentraler Bestandteil der Bildverarbeitung, nämlich die Anwendung von Stacking-Algorithmen, ist von der Qualität und Menge der aufgenommenen Rohdaten abhängig. Ungenauigkeiten bei der Auswertung und Kalibrierung der Bilder können schnell zu fehlerhaften Ergebnissen führen. Das sogenannte „Overfitting“, bei dem sich die Algorithmen zu stark an die Artefakte anpassen, führt in der Astrofotografie oft zu verfälschten Darstellungen. Hinzu kommt die Herausforderung, große Datenmengen effizient zu speichern und zu verarbeiten, besonders wenn hochauflösende Kameras mehrere Tausend Bilder erzeugen. Für Informatiker birgt dies die Aufgabe, Algorithmen zu optimieren, die sowohl bezüglich ihrer Laufzeit als auch ihrer Speicherkomplexität skalierbar sind.

= Theoretische Grundlagen

== Astronomische Strahlungsquellen und Photonenfluss

Dieser Abschnitt beschreibt, wie astronomische Objekte elektromagnetische Strahlung erzeugen und wie sich diese Strahlung im Photonenbild als Photonfluss am Teleskop und am Sensor ausdrücken lässt. Diese Begriffe bilden die physikalische Grundlage für die weitere Betrachtung der Grenzen der Astrofotografie. @smiljanic_em_2019 @smiljanic_obs_2019 @galyam_obs_2012 Die meisten Informationen über das Universum werden aus der Analyse der elektromagnetischen Strahlung gewonnen, die astronomische Objekte aussenden oder reflektieren. Diese Strahlung lässt sich als elektromagnetische Welle mit Wellenlänge λ und Frequenz ν beschreiben, die über die Beziehung λ · ν = c mit der Lichtgeschwindigkeit c verknüpft sind. Alternativ kann Licht im Teilchenbild als Strom masseloser Quanten (Photonen) aufgefasst werden, die diskrete Energiepakete transportieren. @smiljanic_em_2019 @smiljanic_obs_2019 @galyam_obs_2012
Für die Astrofotografie ist insbesondere die Teilchen-Sicht relevant, da elektronische Detektoren letztlich einzelne Photonen registrieren und in elektrische Ladung umwandeln. Die Stärke des Bildsignals und das unvermeidliche Photonrauschen hängen direkt von der Anzahl der detektierten Photonen ab und lassen sich nur im Photonenbild adäquat beschreiben. @smiljanic_em_2019 @romanishin_ccd_2002 @bolte_sn_2004

Astronomische Objekte emittieren Strahlung über einen weiten Bereich des elektromagnetischen Spektrums, von Radiowellen bis Gammastrahlung. Für die bodengebundene Astrofotografie ist vor allem das optische Fenster der Erdatmosphäre relevant, das grob den Bereich von etwa 300–900 nm umfasst und den sichtbaren Bereich (ca. 400–700 nm) sowie angrenzendes nahes Infrarot einschließt. @esa_em_2002 @smiljanic_em_2019 @wellenlaengenAtmosFenster zeigt nochmals anschaulich dieses Spektrum sowie das sogenannte atmosphärische Fenster.

#figure(
  image("assets/wavelengths.PNG", width: 80%),
  caption: [Abbildung der Wellenlängen und des atmosphärischen Fensters. Quelle: NOAA NWS]
) <wellenlaengenAtmosFenster>

Ein Photon mit der Frequenz ν besitzt die Energie

$ E = h · ν = (h · c) / lambda $

wobei h die Planck-Konstante und c die Lichtgeschwindigkeit im Vakuum ist. @smiljanic_em_2019 @libretexts_photon_2021

- E: Energie eines Photons [J]  
- h: Planck-Konstante ≈ 6,626 · 10^{-34} J·s  
- ν: Frequenz [Hz]  
- λ: Wellenlänge [m]  
- c: Lichtgeschwindigkeit ≈ 3,0 · 10^8 m/s  

Diese Gleichung folgt aus der Quantisierung der elektromagnetischen Strahlung in Energiequanten E = hν sowie der wellenoptischen Beziehung c = λν. Kürzere Wellenlängen (blaues und ultraviolettes Licht) tragen somit mehr Energie pro Photon als längere Wellenlängen (rotes und infrarotes Licht). @smiljanic_em_2019 @libretexts_photon_2021 @galyam_obs_2012
Für die Astrofotografie bedeutet dies, dass bei gleicher Strahlungsleistung im optischen Bereich langwelliges Licht mehr Photonen pro Sekunde liefert als kurzwelligeres Licht, da die Energie pro Photon kleiner ist. Da elektronische Detektoren Photonen zählen, wirkt sich dies direkt auf die erreichbare Bildqualität und die mögliche Bildauflösung aus. @romanishin_ccd_2002 @bolte_sn_2004 @libretexts_photon_2021

Zur quantitativen Beschreibung der Strahlung werden in der Radiometrie Leistungsgrößen verwendet, die sich mit Hilfe der Photonenergie in photonische Größen übersetzen lassen. Wichtige radiometrische Größen sind:

- Strahlungsleistung (radiant power) $Φ_e$ [W]  
  Gesamtenergie pro Zeit, die in Form elektromagnetischer Strahlung transportiert wird.

- Bestrahlungsstärke (irradiance) $E_e$ [W/m²]  
  Strahlungsleistung pro Fläche, die auf eine Detektorfläche fällt.

- Strahlungsflussdichte (flux density) $f_ν$ oder $f_λ$ [z. B. W/m²/Hz, W/m²/nm]  
  Strahlungsleistung pro Fläche und Frequenz- oder Wellenlängenintervall.

Diese Größen sind in der astronomischen und optischen Literatur formal definiert und bilden die Basis für photometrische Messungen. @wilson_era_2013 @pbrt_radiometry_2022 Im Photonenbild sind die folgenden Größen zentral @libretexts_photon_2021 @photonics_flux_2023:

- Photonenzahl N: Anzahl der Photonen (dimensionslos).  
- Photonfluss $Φ_p = (d"N")/(d"t")$ [Photons/s]: Anzahl der Photonen pro Zeit, die durch eine betrachtete Fläche oder ein System treten.  
- Photonflussdichte (Photonen-Bestrahlungsstärke) $Φ_{p,A} = (d"N")/(d"t" · d"A")$[Photons $s^(-1) m^(-2)$]: Anzahl der Photonen pro Zeit und Fläche.

Für monochromatische Strahlung oder Strahlung in einem schmalen spektralen Band mit Bestrahlungsstärke $E_e$ [$W/m²$] bei Wellenlänge λ ergibt sich der Zusammenhang: @libretexts_photon_2021

$ Φ_(p,A) = E_e/E = E_e/(h · c / lambda) = (E_e · lambda)/(h · c) $

mit $Φ_(p,A)$ als Photonflussdichte [Photons $s^(-1) m^(-2)$] und $E_e$ als Bestrahlungsstärke [$W/m²$]. Die Konstante h·c ist das Produkt aus Planck-Konstante und Lichtgeschwindigkeit. Die Formel ergibt sich daraus, dass die Bestrahlungsstärke die Energie pro Zeit und Fläche beschreibt und die Zahl der Photonen pro Zeit und Fläche entsprechend der Strahlungsleistung dividiert durch die Energie pro Photon entspricht. Diese Beziehung verbindet radiometrische Messgrößen mit der tatsächlich detektierten Photonenzahl und ist damit eine fundamentale Grundlage für die Berechnung erwarteter Photonenzahlen in der Astrofotografie. @romanishin_ccd_2002 @libretexts_photon_2021 In der optischen Astronomie wird die beobachtete Helligkeit eines Objekts über das Magnitudensystem beschrieben. @romanishin_ccd_2002 @smiljanic_meas_2019 Die Differenz der scheinbaren Magnituden zweier Objekte m₁ und m₂ ist über deren Flussdichten f₁ und f₂ durch

$ m_1 - m_2 = -2,5 · log_(10) ( f_1 / f_2 ) $

definiert. Hier bezeichnet f typischerweise den Strahlungsfluss (oder die Strahlungsflussdichte) eines Objekts in einem bestimmten photometrischen Band. Durch Umstellen erhält man das Flussverhältnis in Abhängigkeit von der Magnitudendifferenz:

$ f_1 / f_2 = 10^(-0,4(m_1 - m_2)) $

Ein Unterschied von 1 mag entspricht einem Flussverhältnis von etwa 2,512, ein Unterschied von 5 mag einem Faktor 100. @romanishin_ccd_2002 Da der Photonfluss im jeweiligen Band proportional zum Strahlungsfluss ist, gilt dieses Verhältnis auch für Photonflussdichten. 

Photometrische Systeme werden über Referenzsterne (z. B. der Stern Wega mit mag 0,0) kalibriert, deren Fluss oder Photonfluss in den jeweiligen Bändern als Nullpunkt dient. @romanishin_ccd_2002 Kennt man den Fluss $f_"ref"$ oder die Photonflussdichte $Φ_(p,"ref")$ eines Sterns mit Magnitude m = 0 in einem Filterband, so lässt sich der Fluss eines Sterns der Magnitude m durch

$ f / f_"ref" = 10^(-0,4m) $

bestimmen. Entsprechend skaliert die Photonflussdichte mit demselben Faktor $10^(-0,4 m)$. In der Literatur finden sich konkrete Nullpunktflüsse, aus denen typische Photonflussdichten für 0-mag-Sterne im V-Band (mittleren, gelblichen Wellenlängenbereich des sichtbaren Spektrums) am oberen Atmosphärenrand berechnet werden können. Diese Werte ermöglichen praxisnahe Abschätzungen erwarteter Photonenzahlen am Teleskop und dienen damit der Planung von Belichtungszeiten. @romanishin_ccd_2002 Die von einem Objekt empfangene Photonenzahl hängt linear von der effektiven Sammelfläche des optischen Systems ab. Für ein Teleskop mit Aperturdurchmesser D ergibt sich zunächst die geometrische Öffnungsfläche

$ A_"geo" = pi · D^2 / 4 $

mit D in Metern und $A_"geo"$ in Quadratmetern. Dabei bezeichnet die Apertur die Öffnungsfläche des Teleskops. Aufgrund von Reflexionsverlusten an Spiegeln, Absorption in Linsen und Filtern sowie Obstruktionen durch Sekundärspiegel steht jedoch nur ein Teil dieser Fläche effektiv zur Verfügung. @howell_ccd_2006 @wilson_era_2013 

Die effektive Sammelfläche kann durch

$ A_"eff" = A_"geo" · tau_"opt" $

beschrieben werden, wobei $τ_"opt"$ die Gesamtdurchlässigkeit des optischen Systems (dimensionslos, 0–1) darstellt. Diese Größe fasst alle optischen Verluste zusammen und bestimmt, wie viele Photonen pro Sekunde bei einem gegebenen Photonfluss tatsächlich das Detektorsystem erreichen. @howell_ccd_2006
Sei $Φ_p$ die Photonflussdichte des astronomischen Objekts am Ort des Teleskops, dann ist die Zahl der vom Objekt eingefangenen Photonen pro Sekunde

$ N_"obj" = Φ_p · A_"eff" $

mit $N_"obj"$ in $"Photons"/s$. @romanishin_ccd_2002 @wilson_era_2013 Berücksichtigt man zusätzlich die atmosphärische Transmission $T_"atm"(λ)$ zwischen 0 und 1, ergibt sich am Boden

$ N_("obj","ground") = Φ_p · A_"eff" · T_"atm"(lambda) $

Die atmosphärische Transmission ist stark wellenlängenabhängig und reduziert insbesondere im blauen und ultravioletten Bereich den Photonfluss, während das optische Fenster eine vergleichsweise hohe Transmission aufweist. @esa_em_2002 @smiljanic_em_2019 Für ein ausgedehntes Objekt mit gegebener Oberflächenhelligkeit (z. B. in Magnituden pro Quadratbogensekunde) ist neben der Sammelfläche auch die Winkelskalierung des Systems entscheidend. Ein Pixel mit Winkelmaßstab $θ_"pix"$ [$"Bogensekunden"/"Pixel"$] deckt am Himmel einen soliden Winkel $Ω_"pix"$ ab (nach Umrechnung der Winkeleinheiten in Steradiant). @romanishin_ccd_2002 @bolte_sn_2004

Der mittlere Photonenzufluss pro Pixel und Belichtungszeit $t_exp$ ergibt sich näherungsweise zu

$ N_"pix" approx Φ_(p,"SB") · A_"eff" · Omega_"pix" · t_"exp" $

wobei $Φ_(p,"SB")$ die Photonflussdichte pro Steradiant ist. Dieser Ausdruck verknüpft die physikalische Oberflächenhelligkeit des Objekts mit der registrierten Photonenzahl im Pixel und bildet eine wichtige Grundlage für die Diskussion von Sampling und Signal-Rausch-Verhältnis. @romanishin_ccd_2002 @bolte_sn_2004 
Der Detektor wandelt eingehende Photonen mit der wellenlängenabhängigen Quanteneffizienz QE(λ) in Elektronen um.  Die mittlere Zahl der erzeugten Signal-Elektronen pro Pixel ist damit

$ N_e = N_"pix" · Q"E"(lambda) $

wobei $N_e$ die Anzahl der registrierten Elektronen und QE(λ) eine dimensionslose Effizienz zwischen 0 und 1 ist. Die Quanteneffizienz koppelt die astrophysikalische Photonenstatistik an das elektrische Signal und bestimmt, wie effizient Photonen unterschiedlicher Wellenlängen in messbare Signale umgesetzt werden. @howell_ccd_2006 @aavso_ccd_2013

== Atmosphäre und Transmission

Die Erdatmosphäre beeinflusst den Weg der Photonen vom astronomischen Objekt bis zum Detektor und begrenzt damit sowohl die effektive Signalstärke als auch die erreichbare Auflösung in der Astrofotografie. Sie schwächt das Signal und verändert die Bilder durch turbulente Brechungsindexfluktuationen. Die durch die Atmosphäre laufende Strahlung wird abgeschwächt, weil Photonen absorbiert oder aus der Sichtlinie gestreut werden. In der optischen Astronomie wird diese Abschwächung als atmosphärische Extinktion bezeichnet und hängt vor allem von der Luftmasse und von der Wellenlänge ab. Die sogenannte Transmission beschreibt die Lichtdurchlässigkeit von optischen Komponenten, darunter Linsen oder Filtern. @massey_atmos_2000 @spiff_atmos_rit_2005


Die wichtigsten Beiträge zur Extinktion sind:

- Rayleigh-Streuung an Luftmolekülen:  
  Rayleigh-Streuung tritt an Teilchen auf, die deutlich kleiner als die Wellenlänge sind, und führt zu einer starken Wellenlängenabhängigkeit der Extinktion $∝ 1/λ⁴$. Kurzwelliges (blaues, UV) Licht wird daher deutlich stärker gestreut als langwelliges (rotes) Licht, was unter anderem zum Blau des Tageshimmels führt. @massey_atmos_2000

- Mie-Streuung an Aerosolen: 
  Mie-Streuung wird durch größere Partikel wie Staub, Tröpfchen und Aerosole verursacht und weist eine schwächere Wellenlängenabhängigkeit auf. Sie trägt insbesondere im roten Spektralbereich und bei niedrigen Beobachtungshöhen zur Extinktion bei.  @aerosol_bremen_2010

- Molekulare Absorption:  
  Moleküle wie Ozon (O₃), Wasserdampf (H₂O) und Sauerstoff (O₂) absor­bieren Photonen in bestimmten Spektralbändern. Dies führt zu charakteristischen Absorptionsbändern (z. B. Ozon im UV, Wasserbänder im nahen IR), in denen die Transmission stark reduziert ist. @esa_em_2002

Für die Astrofotografie bedeutet dies, dass die transmittierte Strahlung in einem Filterband durch alle drei Mechanismen gleichzeitig reduziert wird. Der Extinktionskoeffizient k(λ) fasst diese Effekte häufig effektiv pro Wellenlängenbereich zusammen (Einheit meist mag/Luftmasse). @massey_atmos_2000
Die Luftmasse X beschreibt, um welchen Faktor der Strahlungsweg durch die Atmosphäre gegenüber dem Zenit vergrößert ist. Der Zenit ist der Punkt, der senkrecht (90°) zum Beochbachtendem steht. Bei einem einfachen planparallelen Atmosphärenmodell erhält man für den Zenitwinkel z die Näherung

$ X approx sec(z) = 1 / cos(z) $

mit z als Winkel zwischen Beobachtungsrichtung und Zenit. Für moderat große Zenitwinkel (typisch z ≲ 60°) liefert diese Beziehung hinreichend genaue Werte für photometrische Korrekturen. @massey_atmos_2000
Bei größeren Zenitwinkeln (d. h. nahe am Horizont) ist die planparallele Näherung nicht mehr ausreichend, und es werden empirisch verbesserte Formeln verwendet, beispielsweise

$ X approx sec(z) · (1 - 0,0012 · (sec^2(z) - 1)) $

die die Erdkrümmung und die vertikale Struktur der Atmosphäre besser berücksichtigen. Die beobachtete Helligkeit F eines Objekts in einem Filterband wird durch die Extinktion gemäß

$ F_"obs" = F_0 · 10^(-0,4 · k(lambda) · X) $

abgeschwächt, wobei F₀ der extraterristrische Fluss (oberhalb der Atmosphäre), k(λ) der Extinktionskoeffizient in mag pro Luftmasse und X die Luftmasse ist. @massey_atmos_2000

- $F_"obs"$: beobachteter Fluss am Teleskop  
- F₀: Fluss ohne atmosphärische Dämpfung  
- k(λ): Extinktionskoeffizient [mag/Luftmasse]  
- X: Luftmasse (dimensionslos)

Die Formel folgt aus der Definition, dass eine Extinktion k·X in Magnituden einer logarithmischen Abschwächung des Flusses entspricht, und aus der Beziehung zwischen Magnitudendifferenz und Flussverhältnis. Typische Extinktionswerte in mittleren Breiten liegen beispielsweise bei etwa 0,4 mag/Luftmasse im niedrigeren Wellenlängenbereich (blau), 0,2 mag/Luftmasse im mittleren Wellenlängenbereich und 0,1 mag/Luftmasse im höheren Wellenlängenbereich, während im nahen IR die Extinktion weiter abnimmt. Dies verdeutlicht, dass kurze Wellenlängen deutlich stärker von der Atmosphäre gedämpft werden als lange. @massey_atmos_2000 @unittoolbox_airmass_2001

Da der Photonfluss direkt proportional zum Fluss F ist, reduziert die atmosphärische Extinktion die am Teleskop verfügbare Photonenzahl um denselben Faktor wie die Strahlungsleistung. @massey_atmos_2000 @romanishin_ccd_2002 Für die effektive Photonflussdichte $Φ_(p,"obs")$ gilt damit analog

$ Φ_(p,"obs") = Φ_(p,0) · 10^(-0,4 · k(lambda) · X) $

wobei $Φ_(p,0)$ die Photonflussdichte ohne atmosphärische Abschwächung ist. Die Folge ist, dass bei hoher Luftmasse und in kurzwelligen Filtern deutlich weniger Photonen den Detektor erreichen und damit für ein gegebenes Signal-Rausch-Verhältnis längere Belichtungszeiten erforderlich werden. Das Signal-Rausch-Verhältnis beschreibt dabei die Qualität eines Nutzsignals und setzt das Signal mit dem Rauschen ins Verhältnis. Dies verknüpft die Wahl der Beobachtungszeit (Objekt möglichst in der Nähe des Meridians) direkt mit der physikalischen Photonstatistik. @massey_atmos_2000 @bolte_sn_2004

Neben der Extinktion verändert die Atmosphäre die räumliche Struktur des Lichts durch turbulente Fluktuationen des Brechungsindex. Die einfallenden Photonen werden an der Atmosphäre dadurch unterschiedlich gebrochen. Diese Turbulenz führt dazu, dass die Wellenfronten verformt werden und ein punktförmiger Stern nicht als Beugungsscheibchen der Optik, sondern als verwaschene Seeing-Scheibe erscheint.
Unter astronomischem Seeing versteht man die durch die Atmosphäre verursachte zeitlich veränderliche Unschärfe und Verzerrung von Sternbildern. Die Atmosphäre weist auf verschiedenen Höhen und Skalen Temperatur- und Dichteschwankungen auf, die den Brechungsindex lokal verändern. Luftzellen mit leicht unterschiedlichem Brechungsindex bewegen sich durch das Teleskopfeld und verzerren die ankommende Wellenfront. Integriert man diese Schwankungen entlang der Sichtlinie, erhält man ein stochastisches Wellenfrontfehlerfeld, das sich zeitlich ändert. Je nach Stärke der Turbulenz werden unterschiedliche räumliche Skalen dominieren, was durch das sogenannte $C_(N²)$-Profil (Strukturkonstante des Brechungsindex) beschrieben wird. @spiff_atmos_rit_2005 

Für praktische Anwendungen fasst man die Wirkung der Turbulenz im Fried-Parameter r₀ zusammen. Der Fried-Parameter r₀ (Fried’s coherence length) ist ein Maß für die Qualität der atmosphärischen Übertragung. Er ist definiert als der Durchmesser einer Kreisöffnung, für die der durch die Atmosphäre verursachte rms-Wellenfrontfehler etwa 1 radian (≈ λ/6) beträgt. @seeing_tutorial_2024

- r₀: Fried-Parameter [m]  
  Durchmesser eines Bereiches der Eintrittspupille, über den die Wellenfront als „weitgehend kohärent“ angesehen werden kann.

Ist der Teleskopdurchmesser D deutlich kleiner als r₀, kann das System näherungsweise beugungsbegrenzt arbeiten; ist D deutlich größer als r₀, dominiert das Seeing, und die Auflösung wird nicht mehr durch die Optik, sondern durch die Atmosphäre begrenzt. @seeing_tutorial_2024 @littlefair_ao_lecture_2018
Typische Werte an guten Standorten liegen bei r₀ ≈ 10 cm bei λ = 500 nm, was einem Seeing von etwa 1″ entspricht. Der Fried-Parameter skaliert mit der Wellenlänge ungefähr wie

$ r_0 ~ lambda^(6/5) $

sodass im nahen Infrarot deutlich größere r₀-Werte und damit kleinere Seeing-Scheiben möglich sind als im sichtbaren Bereich. @littlefair_ao_lecture_2018 Die Turbulenzzellen wandern mit den Winden über das Teleskop hinweg, sodass sich das Muster der Wellenfrontverzerrungen auf Zeitskalen von Millisekunden bis Sekunden ändert. Die charakteristische Zeit, über die die atmosphärischen Bedingungen im Mittel stabil bleiben, wird durch den atmosphärischen Zeitkonstanten t₀ beschrieben.

- t₀: atmosphärische Kohärenzzeit [s]  
  Zeit, nach der sich das Turbulenzmuster signifikant verändert.

Für langbelichtete Bilder über viele t₀ hinweg ergibt sich ein gemitteltes Seeing-Bild, während kurzbelichtete Aufnahmen („Lucky Imaging“) Momente mit besonders geringem Wellenfrontfehler nutzen können. Dies erklärt, warum sehr kurze Einzelbelichtungen zu deutlich schärferen Einzelbildern führen können, obwohl die mittlere Seeing-Bedingung unverändert ist. @spiff_atmos_rit_2005 Der Einfluss der Atmosphäre auf die Abbildung eines punktförmigen Sterns lässt sich durch den Full-Width-at-Half-Maximum-Durchmesser der Seeing-Scheibe in Bogensekunden charakterisieren. In der theoretischen Beschreibung der Kolmogorov-Turbulenz, welche den Transport von kinetischer Energie in einer turbulenten Strömung beschreibt, ergibt sich ein Zusammenhang zwischen Fried-Parameter r₀ und der FWHM des Seeing-Scheibchens (für langbelichtete Bilder) von näherungsweise

$ "FWHM"_"seeing" approx 0,98 · lambda / r_0 $

wobei λ die Beobachtungswellenlänge und r₀ der Fried-Parameter ist (beide in gleichen Längeneinheiten). @caltech_coronograph_2004

Um den Wert in Bogensekunden auszudrücken, wird der Ausdruck mit dem Umrechnungsfaktor 206265 (Bogensekunden pro Radiant) multipliziert:

$ "FWHM"_"seeing"("arcsec") approx 0,98 · (lambda / r_0) · 206265 $

- λ: Wellenlänge [m]  
- r₀: Fried-Parameter [m]  
- $"FWHM"_"seeing"$: charakteristischer Seeing-Durchmesser [arcsec]

Die Formel zeigt, dass ein größerer Fried-Parameter (bessere atmosphärische Bedingungen) zu einem kleineren Seeing-Durchmesser führt und dass Seeing bei längeren Wellenlängen etwas günstiger ist. @littlefair_ao_lecture_2018 In der Praxis ergibt sich die beobachtete Punktspreizfunktion (PSF) eines Sterns aus der Faltung der optischen PSF des Teleskops mit der atmosphärischen PSF. @cfht_psf_1998

$ h_"eff" = h_"optik" * h_"atm" $

- $h_"eff"$: effektive PSF des Gesamtsystems  
- $h_"optik"$: PSF der beugungsbegrenzten Optik  
- $h_"atm"$: PSF der Atmosphäre (Seeing)

Die Faltung beschreibt mathematisch, dass das Bild eines Punktes durch jeden Teil des Systems „verschmiert“ wird. Ist die atmosphärische PSF deutlich breiter als die optische Beugungsscheibe, dominiert h_atm, und das System ist seeing-begrenzt; ist hingegen die Optik der limitierende Faktor (z. B. bei Raumteleskopen oder mit leistungsfähiger Adaptiver Optik), bestimmt h_optik die effektive Auflösung. @cfht_psf_1998 @littlefair_ao_lecture_2018 Die Betrachtung von Extinktion und Seeing vervollständigt den Weg der Photonen vom astronomischen Objekt über die Atmosphäre bis in das Teleskop. Die Luftmasse und die wellenlängenabhängige Extinktion bestimmen, wie viele Photonen überhaupt den Detektor erreichen und damit die erreichbare Signalstärke und das Signal-Rausch-Verhältnis. @massey_atmos_2000 @bolte_sn_2004  
Gleichzeitig setzen turbulente Brechungsindexfluktuationen, beschrieben durch den Fried-Parameter r₀ und den Seeing-Scheibendurchmesser, eine reale Auflösungsgrenze, die häufig deutlich über der theoretischen Beugungsgrenze der Optik liegt. Selbst ein perfektes, beugungsbegrenztes Teleskop kann diese Grenze ohne adaptive Optik nicht unterschreiten. Damit liefert die Atmosphäre eine zentrale physikalische Begründung dafür, warum die in der Optik ideal erreichbare Auflösung in der bodengebundenen Astrofotografie meist nicht ausgeschöpft werden kann. @littlefair_ao_lecture_2018

== Optische Systeme der Astrofotografie

Nachdem in den vorherigen Abschnitten der Ursprung der Photonen in astronomischen Strahlungsquellen sowie der Einfluss der Erdatmosphäre auf den Photonfluss und die Auflösung betrachtet wurden, richtet sich der Fokus nun auf die optischen Systeme, die diese Photonen sammeln und auf den Detektor abbilden. Teleskope und ihre optischen Komponenten bestimmen maßgeblich, wie effizient Photonen gesammelt, geleitet und in ein Abbild des Himmels überführt werden und welche theoretische Maximalauflösung dabei physikalisch erreichbar ist. @galyam_obs_2012 @howell_ccd_2006

Grundsätzlich lässt sich die Aufgabe eines Teleskops auf zwei zentrale Funktionen reduzieren: die Sammlung möglichst vieler Photonen durch eine große Öffnung sowie die Abbildung des einfallenden Lichts auf eine Bildebene mit definierter Abbildungsskala. In der Astrofotografie kommen unterschiedliche optische Konzepte zum Einsatz, die sich in Konstruktion, Abbildungsqualität und Eignung für verschiedene Anwendungsbereiche unterscheiden. @galyam_obs_2012

Refraktoren sind Linsenteleskope, bei denen das Licht durch ein Objektiv aus Glaslinsen gebündelt und in der Fokalebene abgebildet wird. @galyam_obs_2012 Das einfachste historische Design ist das achromatische Objektiv, das aus zwei Linsen unterschiedlicher Glasart besteht und die chromatische Aberration für zwei Wellenlängen minimiert. @galyam_obs_2012 Moderne apochromatische Refraktoren verwenden drei oder mehr Linsen, teilweise aus speziellen ED-Gläsern, um die chromatische Aberration über einen größeren Spektralbereich zu korrigieren. @galyam_obs_2012 @howell_ccd_2006 In der Astrofotografie sind Refraktoren insbesondere wegen ihres stabilen Justageverhaltens, ihres hohen Kontrasts und ihrer vergleichsweise gut korrigierten Bildfelder bei kleinen bis mittleren Öffnungen verbreitet. @howell_ccd_2006

Newton-Reflektoren nutzen einen konkaven Hauptspiegel, meist parabolisch geschliffen, der das einfallende Licht sammelt und zu einem Fokus lenkt, sowie einen planen Sekundärspiegel, der den Strahlengang seitlich zum Okular oder zur Kamera auslenkt. @galyam_obs_2012 @howell_ccd_2006 Da reflektierende Optiken im relevanten Bereich keine chromatische Aberration aufweisen, sind Newton-Teleskope spektral weitgehend farbrein. @galyam_obs_2012 Die zentrale Obstruktion durch den Sekundärspiegel verändert allerdings das Beugungsmuster und kann den Bildkontrast reduzieren. @howell_ccd_2006 Newton-Teleskope bieten bei gleicher Öffnung häufig ein günstiges Verhältnis zwischen Kosten und Lichtsammelleistung und sind daher im Amateurbereich weit verbreitet. @howell_ccd_2006

Schmidt-Cassegrain-Teleskope sind kompakte, katadioptrische Systeme, die Spiegel- und Linsenelemente kombinieren. @galyam_obs_2012 Ein sphärischer Hauptspiegel und ein konvexer Sekundärspiegel bilden eine gefaltete Cassegrain-Optik, während eine dünne Schmidt-Korrekturplatte an der Öffnung sphärische Aberration kompensiert. @galyam_obs_2012 Dadurch wird eine lange Brennweite bei relativ kurzer Bauform realisiert. @howell_ccd_2006 Schmidt-Cassegrain-Systeme sind aufgrund ihrer Vielseitigkeit – von der Planetenbeobachtung bis zur Deep-Sky-Astrofotografie – weit verbreitet, erfordern für großformatige Sensoren aber häufig zusätzliche Korrektoren, um ein ebenes und gut korrigiertes Bildfeld zu gewährleisten. @howell_ccd_2006

Astrographen sind speziell für fotografische Anwendungen optimierte Teleskope. Sie werden so ausgelegt, dass sie ein großes, ebenes Bildfeld mit hoher Korrektur klassischer Abbildungsfehler wie Astigmatismus, Koma und Feldkrümmung über den relevanten Spektralbereich liefern. @howell_ccd_2006 @galyam_obs_2012 Moderne Astrographen sind häufig schnelle Refraktor- oder Reflektorkonzepte mit integrierten Korrektorlinsen. @howell_ccd_2006 Ziel ist es, den Photonfluss möglichst effizient und ohne signifikante Bildverschlechterung bis in die Bildebene zu führen, sodass auch große Sensoren bis in die Ecken hinein nutzbare, scharfe Sterne zeigen. @howell_ccd_2006

Eine zentrale Kenngröße zur Charakterisierung optischer Systeme ist das Öffnungsverhältnis, auch f/Ratio genannt. Es ist definiert als das Verhältnis von Brennweite f zur Öffnung D des Teleskops, also $"Öffnungsverhältnis" = f/D$. @howell_ccd_2006 Das Öffnungsverhältnis beschreibt, wie „lichtstark“ ein System ist: Bei gegebener Objekthelligkeit ist die Beleuchtungsstärke in der Bildebene näherungsweise umgekehrt proportional zum Quadrat des f/Ratio. @howell_ccd_2006 Ein kleines f/Ratio (etwa f/3 bis f/5) kennzeichnet ein lichtstarkes System, das bei gleicher Belichtungszeit mehr Photonen pro Flächeneinheit auf den Sensor bringt und damit insbesondere für ausgedehnte Deep-Sky-Objekte vorteilhaft ist. @howell_ccd_2006 Ein großes f/Ratio (etwa f/10) reduziert die Photonendichte pro Flächeneinheit, vergrößert aber die Abbildungsskala, was etwa bei Detailaufnahmen von Planeten und kleinen Objekten hilfreich sein kann. @howell_ccd_2006

Zur Veranschaulichung bietet sich eine schematische Abbildung der grundlegenden Teleskoptypen (Refraktor, Newton-Reflektor, Schmidt-Cassegrain und Astrograph) an, welche jeweils den Strahlengang und die Position der optischen Elemente zeigt. Eine solche Darstellung findet sich @teleskoptypen und erleichtert das Verständnis der unterschiedlichen Konzepte. @galyam_obs_2012

#figure(
  image("assets/teleskoptypen.jpg", width: 60%),
  caption: [Abbildung der Strahlungsverläufe bei Refraktor., Newton-Reflektor- und Schmidt-Cassegrain-Teleskopen. Quellen: @pic_newton @pic_refraktor @pic_schmidt]
) <teleskoptypen>

Neben der geometrischen Auslegung des optischen Systems spielt die Transmission eine entscheidende Rolle. Jede optische Oberfläche verursacht Reflexionen und Absorption, sodass ohne geeignete Beschichtungen nur ein Teil des einfallenden Lichts den Detektor erreicht. An einer unbehandelten Glas–Luft-Grenzfläche treten je nach Brechungsindex Reflexionsverluste von mehreren Prozent pro Fläche auf; in einem mehrlinsigen System summiert sich dies zu erheblichen Verlusten. @pbrt_radiometry_2022 Auch Spiegel weisen nur endliche Reflexionsgrade auf, typischerweise im Bereich von 85 bis 95 Prozent, sodass sich bei mehreren reflektierenden Flächen die effektive Durchlässigkeit des Systems spürbar verringert. @howell_ccd_2006

Antireflexbeschichtungen werden eingesetzt, um Reflexionsverluste an Glas–Luft-Grenzflächen zu minimieren. Durch dünne Schichten mit geeignetem Brechungsindex und definierter Schichtdicke lässt sich destruktive Interferenz der reflektierten Wellen erreichen, sodass der effektive Reflexionsgrad für bestimmte Wellenlängen deutlich reduziert wird. @pbrt_radiometry_2022 Mehrschichtvergütungen erweitern diesen Effekt auf einen größeren Spektralbereich. @pbrt_radiometry_2022 In der Astrofotografie erhöhen solche Vergütungen die Transmission der Optik und reduzieren interne Reflexionen und Geisterbilder, was unmittelbar den Kontrast und die nutzbare Signalstärke verbessert. @howell_ccd_2006

Zusätzlich zu direkten Reflexionsverlusten beeinträchtigen Streulicht und interne Reflexe die Bildqualität. Streulicht entsteht beispielsweise an rauen Oberflächen, Staub oder mechanischen Komponenten im Tubus und manifestiert sich als erhöhter Hintergrund oder als diffuse Aufhellungen um helle Sterne. @howell_ccd_2006 Um Streulicht zu minimieren, werden innen geschwärzte Flächen, Blenden und eine geeignete Tubusgeometrie eingesetzt. @howell_ccd_2006 Ein hoher Bildkontrast ist insbesondere für die Abbildung schwacher Strukturen entscheidend, die sich nur wenig vom Himmelshintergrund abheben.

Der effektive Signalfluss eines optischen Systems ergibt sich stets aus dem Zusammenspiel von Öffnung und Gesamtdurchlässigkeit des Strahlengangs. Wie bereits in Abschnitt 2.1 eingeführt, kann die effektive Sammelfläche als

$ A_"eff" = A_"geo" · tau_"opt" $

geschrieben werden, wobei τ_opt alle Reflexions- und Absorptionsverluste des optischen Pfads umfasst. @howell_ccd_2006 Eine höhere Transmission τ_opt führt bei konstanter Öffnung direkt zu einer größeren Zahl detektierter Photonen pro Zeiteinheit und damit entweder zu kürzeren notwendigen Belichtungszeiten oder zu einem verbesserten Signal-Rausch-Verhältnis. @howell_ccd_2006 @bolte_sn_2004 Schlechte Vergütung, Verschmutzung oder starke Streulichtprobleme verringern hingegen den effektiven Signalfluss und limitieren so die praktisch erzielbare Bildqualität, obwohl die geometrische Öffnung unverändert bleibt. @howell_ccd_2006

Selbst bei einem idealen, verlustfreien System ist die Auflösung eines Teleskops nicht beliebig steigerbar, sondern durch die Wellencharakteristik des Lichts begrenzt. Diese fundamentale Grenze wird durch die Fraunhofer-Beugung an der Teleskopapertur beschrieben. Für eine kreisförmige Öffnung ergibt sich als Bild einer ideal punktförmigen Lichtquelle das sogenannte Airy-Muster: ein heller zentraler Fleck, die Airy-Scheibe, umgeben von konzentrischen Beugungsringen. @telescope_psf_2009 Der Winkelradius des ersten Minimums der Airy-Scheibe – also der Abstand zwischen Zentrum und erstem Intensitätsnull – lässt sich näherungsweise durch

$ theta_"Airy" approx 1,22 · (lambda/"D") $

angeben, wobei λ die Wellenlänge des Lichts und D der Aperturdurchmesser des Teleskops ist. Umrechnung in Bogensekunden erfolgt mit dem Faktor 206265 arcsec pro Radiant. Diese Größe liefert die theoretische Beugungsgrenze: Sie gibt an, wie fein Winkeldetails im Idealfall aufgelöst werden können, wenn die Optik perfekt und frei von weiteren Störeinflüssen ist. @telescope_psf_2009

Das Rayleigh-Kriterium nutzt die Airy-Scheibe, um eine praktische Grenze für die Auflösung zweier punktförmiger Lichtquellen zu definieren. Es besagt, dass zwei gleich helle Sterne als gerade noch getrennt gelten, wenn das Hauptmaximum der einen Airy-Scheibe im ersten Minimum der anderen liegt. Der zugehörige Winkelabstand θ_R ist identisch mit der oben genannten Beugungsgröße:

$ theta_R = 1,22 · (lambda/"D") $

und wird in der Astronomie oft als theoretische Winkelauflösung eines beugungsbegrenzten Teleskops angegeben. @telescope_psf_2009 Die Formel zeigt direkt die Abhängigkeit von Apertur und Wellenlänge: Eine größere Öffnung oder eine kürzere Wellenlänge führt zu einer kleineren beugungsbedingten PSF und damit zu einer höheren theoretischen Auflösung.

Das Dawes-Kriterium stellt ein empirisches, aus visuellen Beobachtungen abgeleitetes Näherungskriterium für die Auflösung von Doppelsternen dar. Es gibt die minimale trennbare Winkelauflösung in Bogensekunden als

$ theta_D approx (116 / D_"mm") $

an, wobei $D_"mm"$ der Teleskopdurchmesser in Millimetern ist. Für typische Beobachtungsbedingungen im sichtbaren Spektralbereich liefert diese Beziehung praxisnahe Werte, die etwas unterhalb der Rayleigh-Grenze liegen, aber denselben funktionalen Zusammenhang – bessere Auflösung bei größerer Apertur – widerspiegeln. @galyam_obs_2012

Zur Illustration der beugungsbedingten Auflösungsgrenzen eignet sich eine Abbildung des Airy-Musters. Eine solche Darstellung findet sich in @airy. @edmund_airy_2022

#figure(
  image("assets/Airydisks_rayleigh_sqrt.png", width: 80%),
  caption: [Abbildung der Auflösungsgrenze gemäß dem Rayleigh-Kriteriums mit Intensität der Einzelpunkte. Quelle: @pic_airy]
) <airy>


== Abbildung, Sampling und digitale Erfassung

Die in den vorherigen Abschnitten beschriebenen optischen Systeme bestimmen, wie Photonen im Teleskop gesammelt und beugungsbegrenzt abgebildet werden. In der praktischen Astrofotografie ist jedoch entscheidend, wie diese kontinuierliche optische Abbildung durch einen diskreten, digitalen Sensor abgetastet wird und welche physikalischen Eigenschaften des Sensors die resultierenden Bilddaten prägen. Dieses Kapitel verbindet daher die geometrische Abbildung mit dem Sampling auf dem Detektor und mit der Sensorphysik, um das beobachtete Bild formal als Faltung der Szene mit der Systemantwort plus Rauschen zu beschreiben.

Der Abbildungsmaßstab eines Teleskop-Kamera-Systems beschreibt, welcher Himmelswinkel auf ein einzelnes Sensel (Pixel) abgebildet wird. Er verknüpft die physikalische Brennweite des Systems mit der Pixelgröße des Detektors und wird in der Astrofotografie üblicherweise in Bogensekunden pro Pixel angegeben. @romanishin_ccd_2002

Die Brennweite f des Teleskops bestimmt die lineare Vergrößerung: Eine größere Brennweite projiziert einen gegebenen Himmelswinkel auf eine größere Strecke in der Fokalebene. @galyam_obs_2012 Die Pixelgröße p des Sensors (z. B. in Mikrometern) legt fest, wie fein diese Strecke digital abgetastet wird. @romanishin_ccd_2002 Aus der Kleinwinkelnäherung ergibt sich für den Bildmaßstab (Pixel Scale) die Beziehung

$ "Skala" ["arcsec"/"pixel"] approx 206,265 · (p[mu"m"]/ f["mm"]) $

wobei 206 265 die Anzahl der Bogensekunden pro Radiant ist. @unittoolbox_pixel_2021 @aavso_pixel_2021

Dieser Abbildungsmaßstab verknüpft die Winkelauflösung mit der digitalen Abtastung: Ist die effektive PSF des Systems (Optik + Atmosphäre) beispielsweise durch ein Seeing von etwa 2″ FWHM bestimmt, so sollte der Pixelmaßstab so gewählt werden, dass diese 2″-Struktur hinreichend fein über mehrere Pixel abgebildet wird. @aavso_pixel_2021 Bei sehr kleinen Skalen (z. B. 0,3″/Pixel) wird das Bild „überabgetastet“, bei sehr großen Skalen (z. B. 4″/Pixel) geht feine Struktur in einem einzigen Pixel verloren.

Zur Illustration findet man in der Literatur Beispiele, in denen CCD-Systeme mit Pixelgrößen von wenigen Mikrometern an Teleskopen mit Brennweiten im Bereich einiger Meter eingesetzt werden, was Skalen von etwa 0,1–1,0″/Pixel ergibt. @romanishin_ccd_2002 @keel_imaging_2007 Solche Skalen sind typisch für Deep-Sky-Astrofotografie, da sie einen Kompromiss zwischen Detailauflösung und Feldgröße darstellen.

Die digitale Erfassung eines optischen Bildes durch den Sensor ist ein Abtastvorgang: Ein kontinuierliches Helligkeitsfeld auf dem Himmel wird über die Optik auf die Fokalebene projiziert und dort mit einem regelmäßigen Gitter von Pixeln diskretisiert. Die Theorie der Signalabtastung, insbesondere das Nyquist-Shannon-Abtasttheorem, liefert here eine Leitlinie, wie fein ein Signal abgetastet werden muss, um die enthaltenen räumlichen Frequenzen rekonstruieren zu können. @astrobasics_nyquist_2025 @keel_imaging_2007

Überträgt man das Nyquist-Kriterium auf die Astrofotografie, entspricht die relevante „Frequenz“ der kleinsten auflösbaren Struktur im Bild, die durch das System begrenzt wird – typischerweise durch das Seeing oder durch die Beugungsgrenze des Teleskops. Das Nyquist-Theorem fordert, dass die Abtastfrequenz mindestens doppelt so hoch sein muss wie die maximale zu rekonstruierende Frequenz. Im Bildraum bedeutet das, dass die charakteristische Breite der PSF (z. B. die FWHM in Bogensekunden) auf mindestens zwei Pixel verteilt sein sollte. @starizona_nyquist_2020

Praktisch wird häufig ein etwas strengeres Kriterium von etwa 2–3 Pixeln pro FWHM verwendet, um eine robuste Rekonstruktion und saubere PSF-Photometrie zu ermöglichen. @unittoolbox_pixel_2021 @aavso_pixel_2021 Man unterscheidet:

- Untersampling: Die PSF erstreckt sich über weniger als etwa 2 Pixel. Feine Strukturen können nicht mehr korrekt rekonstruiert werden, Sterne erscheinen „blockig“, und die Form der PSF wird stark vom Pixelraster dominiert. @astrobasics_nyquist_2025  
- Nyquist-konformes Sampling: Die PSF ist über etwa 2–3 Pixel FWHM verteilt. Details, die physikalisch im System vorhanden sind, können im Prinzip rekonstruiert werden, ohne zusätzliche Information zu verlieren. @starizona_nyquist_2020  
- Oversampling: Die PSF erstreckt sich über viele Pixel (z. B. 5–10 Pixel FWHM). Die Bildinformation steigt dabei nicht, aber das Rauschen pro aufgelöstem Flächenelement nimmt zu, und die Datenmengen wachsen, ohne dass die theoretische Auflösung besser wird. @astroworld_oversampling_2024

Im Kontext der Grenzen der Astrofotografie bedeutet dies, dass die Auswahl der Kombination aus Brennweite und Pixelgröße sorgfältig an die typische Seeing-Scheibengröße und die gewünschte Auflösung angepasst werden muss. Ein zu grober Abbildungsmaßstab kann nicht durch nachträgliche digitale Verarbeitung kompensiert werden, da die fehlenden Details nie erfasst wurden; ein zu feiner Maßstab erhöht die Anforderungen an Nachführung, Stabilität und Datenverarbeitung, ohne die physikalische Auflösung zu verbessern. @keel_imaging_2007

Die kontinuierliche optische Intensitätsverteilung wird durch den Bildsensor (CCD oder CMOS) in diskrete elektrische Signale umgesetzt. Dabei werden Photonen in photoaktive Volumina (Pixel) eingekoppelt und in Elektronenladung konvertiert, die anschließend ausgelesen und digitalisiert wird. @howell_ccd_2006

Historisch dominierte in der Astronomie die CCD-Technologie (Charge-Coupled Device). @howell_ccd_2006 CCDs sammeln die Ladung in integrierten Potentialtöpfen und übertragen sie zeilenweise zu einem Ausleseverstärker. Diese Architektur ermöglicht sehr niedriges Ausleserauschen und eine homogene Pixelantwort, ist aber in der parallelen Auslesegeschwindigkeit begrenzt. @howell_ccd_2006 Moderne CMOS-Sensoren (Complementary Metal-Oxide-Semiconductor) integrieren Verstärker und Ausleselogik direkt in jedem Pixel oder in Pixelblöcken, was hohe Bildraten und flexible Auslesemodi erlaubt. @buil_cmos_2016 Allerdings war das Ausleserauschen früher höher und die Kalibrierung komplexer; neuere wissenschaftliche CMOS-Sensoren haben diesen Abstand in vielen Anwendungsbereichen deutlich reduziert. @buil_cmos_2016

Zentrale Kenngrößen beider Sensortypen sind:

- Quanteneffizienz (QE): Die Quanteneffizienz gibt an, welcher Anteil der einfallenden Photonen im Mittel in Elektronen umgewandelt wird und ist wellenlängenabhängig. @howell_ccd_2006 Werte von 50–90 % sind für moderne CCD- und sCMOS-Sensoren im sichtbaren Bereich üblich. Eine hohe QE erhöht bei vorgegebenem Photonfluss die Zahl der Signal-Elektronen und damit das erreichbare Signal-Rausch-Verhältnis. @howell_ccd_2006

- Full-Well-Kapazität: Die Full-Well-Kapazität beschreibt die maximale Anzahl von Elektronen, die ein Pixel speichern kann, bevor es in die Sättigung geht und keine höheren Signale mehr differenziert werden können. @hamamatsu_dynrange_2010 Typische Full-Well-Werte liegen je nach Pixelgröße im Bereich von einigen 10 000 bis über 100 000 Elektronen pro Pixel. @hamamatsu_dynrange_2010

- Dynamikumfang: Der Dynamikumfang eines Sensors wird häufig als Verhältnis zwischen maximalem Signal (Full-Well-Kapazität) und dem effektiven Rauschpegel (Summe aus Dunkelstrom- und Ausleserauschen) angegeben. @hamamatsu_dynrange_2010 Ein hoher Dynamikumfang ist wichtig, um gleichzeitig sehr helle und sehr schwache Strukturen im selben Bild darstellen zu können, ohne dass helle Bereiche saturieren oder schwache Strukturen im Rauschen untergehen. @hamamatsu_dynrange_2010

Diese Parameter bestimmen zusammen mit der Optik, wie viele Photonen tatsächlich als nutzbare Elektronen im Pixel landen und mit welcher Präzision Helligkeitsunterschiede messbar sind.

Das resultierende digitale Bild wird nicht nur durch die deterministische Abbildung der Szene geprägt, sondern auch durch verschiedene Rauschquellen. @bolte_sn_2004 Diese Rauschquellen sind teilweise unvermeidbar und setzen fundamentale Grenzen für das erreichbare Signal-Rausch-Verhältnis, selbst wenn Optik, Nachführung und Kalibrierung ideal wären.

Wichtige Rauschquellen sind:

- Photonenrauschen (Photon Noise): 
  Photonen treffen diskret und zufällig ein, und selbst bei einer konstanten mittleren Photonenzahl pro Pixel unterliegt diese Zahl statistischen Schwankungen. @bolte_sn_2004 Dieses Photonrauschen folgt einer Poisson-Verteilung mit Varianz gleich dem Erwartungswert, sodass die Standardabweichung $sigma_"ph" approx sqrt(N_"Signal")$ ist. @bolte_sn_2004 Damit wächst das Signal-Rausch-Verhältnis im photonendominierten Regime wie $"SNR" approx sqrt(N_"Signal")$. @bolte_sn_2004

- Ausleserauschen (Read Noise): 
  Beim Auslesen des Sensors wird elektronisches Rauschen eingeführt, etwa durch den Verstärker und die A/D-Wandlung. @howell_ccd_2006 Dieses Ausleserauschen wird oft als annähernd normalverteilt (gaussförmig) mit fester Standardabweichung in Elektronen modelliert. @bolte_sn_2004 Insbesondere bei kurzen Belichtungen und schwachen Signalen kann das Read Noise die dominante Rauschquelle sein.

- Dunkelstrom (Dark Current):  
  Auch ohne Licht werden in den Pixeln thermisch Elektronen generiert, die sich als Dunkelstrom manifestieren. @howell_ccd_2006 Der Dunkelstrom steigt stark mit der Sensortemperatur und der Belichtungszeit und erzeugt sowohl einen zusätzlichen Signaloffset als auch ein zugehöriges Rauschen (Shot-Noise des Dunkelstroms). @howell_ccd_2006 Eine Kühlung des Sensors reduziert daher die Dunkelstromkomponente und erhöht den nutzbaren Dynamikumfang.

- Quantisierungsrauschen (Quantization Noise):  
  Bei der Analog-Digital-Wandlung werden die kontinuierlichen Signalpegel auf diskrete ADU-Stufen (Analog-Digital Units) gerundet. @howell_ccd_2006 Diese Rundung erzeugt ein Quantisierungsrauschen, das sich insbesondere bei sehr niedrigen Signalen bemerkbar macht, wenn die ADU-Auflösung grob ist. @hamamatsu_dynrange_2010 In modernen wissenschaftlichen Kameras wird der Verstärkungsfaktor (Gain) so gewählt, dass das Quantisierungsrauschen im Vergleich zu anderen Rauschquellen meist vernachlässigbar ist.

Diese Effekte lassen sich in einem vereinfachten Bildentstehungsmodell zusammenfassen. Die beobachtete Intensität I(x,y) im Pixel (x,y) kann als Ergebnis einer Faltung des wahren Helligkeitsverteilungsfeldes S(x,y) mit der effektiven Punktspreizfunktion h(x,y) des Systems plus eines Rauschterms N(x,y) geschrieben werden: @keel_imaging_2007 @starck_inverse_2002

$ I(x,y) = (S * h)(x,y) + N(x,y) $

Hier beschreibt S(x,y) die wahre Szene (z. B. Helligkeit eines Nebels oder Sternfeldes), h(x,y) die kombinierte Antwort von Optik, Atmosphäre und Sensor (PSF, inklusive Beugung, Seeing, Abtastung und ggf. weiterer Unschärfen), und N(x,y) fasst die oben beschriebenen stochastischen Rauschkomponenten zusammen. @keel_imaging_2007 In Fourier-Darstellung geht diese Faltung in eine Multiplikation über, was für viele Bildrekonstruktions- und Deconvolution-Verfahren ausgenutzt wird. @starck_inverse_2002

== Signal-Rausch-Verhältnis und Belichtungszeit

Die bisher betrachteten Abschnitte haben beschrieben, wie viele Photonen ein Teleskop-Sensor-System von einem astronomischen Objekt sammelt und wie diese Photonen in digitale Signale umgewandelt werden. Für die Bildqualität ist jedoch nicht nur die absolute Signalmenge entscheidend, sondern das Verhältnis zwischen Nutzsignal und unvermeidbarem Rauschen. Dieses Signal-Rausch-Verhältnis (Signal-to-Noise Ratio, SNR) bestimmt, ob feine Strukturen und schwache Objekte im Bild erkennbar sind oder im Rauschen untergehen. @bolte_sn_2004 @keel_imaging_2007

Das Signal-Rausch-Verhältnis lässt sich allgemein als Quotient aus einem mittleren Signalanteil μ_S und der Standardabweichung σ_N der Rauschkomponenten definieren:

$ "SNR" = (mu_S)/(sigma_N) $

Dabei beschreibt μ_S typischerweise die mittlere Anzahl von Signal-Elektronen in einem Pixel oder in einer Messapertur, während σ_N die Gesamtstandardabweichung aller Rauschquellen ist, die auf diese Messung wirken. @bolte_sn_2004 Je größer das SNR, desto „stabiler“ ist das Signal gegenüber zufälligen Schwankungen und desto zuverlässiger lassen sich Helligkeitsunterschiede und Strukturen aus dem Bild herausarbeiten.

In der optischen Astronomie kann die Varianz des Gesamtrauschens oft als Summe der Varianzen unabhängiger Rauschbeiträge geschrieben werden. Für ein einzelnes Pixel (oder eine Messapertur) ergibt sich schematisch:

$ sigma_N^2 = sigma_"ph"^2 + sigma_"sky"^2 + sigma_"dark"^2 + sigma_"read"^2 $

wobei σ_ph für das Photonrauschen des Objekts, σ_sky für das Photonrauschen des Himmelshintergrunds, σ_dark für das Rauschen des Dunkelstroms und σ_read für das Ausleserauschen des Detektors steht. @bolte_sn_2004 @eso_sn_2004 Diese Aufspaltung macht sichtbar, dass das SNR durch mehrere physikalische Prozesse begrenzt wird, die jeweils ihre eigene statistische Charakteristik besitzen.

Die Abhängigkeit des SNR von der Belichtungszeit ergibt sich aus der unterschiedlichen Skalierung von Signal und Rauschen mit der Zeit. Der Signalanteil von Objekt und Himmelshintergrund wächst proportional zur Belichtungszeit t, da länger belichtete Pixel mehr Photonen sammeln. @bolte_sn_2004 Wenn $R_*$ die mittlere Rate der erzeugten Signal-Elektronen vom Objekt pro Pixel (z. B. in Elektronen pro Sekunde) ist, dann gilt für das mittlere Signal:

$ mu_S = R_* · t $

Das Photonrauschen von Objekt und Himmel folgt einer Poisson-Statistik, bei der die Varianz gleich dem Erwartungswert ist. @bolte_sn_2004 @smiljanic_data_2019 Für den Objektanteil ergibt sich

$ sigma_"ph"^2 approx mu_S = R_* · t $

und analog für den Himmelshintergrund mit einer Rate R_sky. Damit wächst das photonendominierte Rauschen mit der Wurzel der Belichtungszeit:

$ sigma_"ph" ~ sqrt(t) $

Während das Nutzsignal linear mit t steigt, wächst das zugehörige Photonrauschen nur mit $sqrt(t)$. @bolte_sn_2004 Daraus folgt im photonendominierten Regime (bei vernachlässigbarem Auslese- und Dunkelstromrauschen) für das SNR näherungsweise:

$ "SNR" approx (R_* · t)/(sqrt(R_* · t)) = sqrt(R_* · t) $

Das bedeutet, dass sich das SNR bei Verdopplung der Belichtungszeit nicht verdoppelt, sondern nur um den Faktor $sqrt(2)$ verbessert. @bolte_sn_2004 Für die Praxis ist dies ein wichtiger Hinweis: sehr lange Einzelbelichtungen liefern zwar ein besseres SNR, aber mit abnehmendem Grenznutzen.

In einer realistischeren Beschreibung wird zusätzlich der Beitrag des Himmelshintergrunds und des Detektorrauschens berücksichtigt. Die in der astronomischen Literatur häufig verwendete SNR-Gleichung (für eine Messapertur mit n_pix Pixeln) lautet: @bolte_sn_2004 @eso_sn_2004

$ "SNR" = (R_* · t)/(sqrt(R_* · t + R_"sky" · t · n_"pix" + D · t · n_"pix" + "RN"^2 · n_"pix")) $

Hierbei sind  
- $R_*$: Signalrate des Objekts [Elektronen/s],  
- R_sky: Rate der Himmelshintergrund-Elektronen pro Pixel [Elektronen/s],  
- D: Dunkelstromrate pro Pixel [Elektronen/s],  
- RN: Ausleserauschen pro Pixel [Elektronen],  
- n_pix: Anzahl der Pixel in der Messapertur,  
- t: Belichtungszeit [s].

Diese Formel zeigt, wie das SNR von Belichtungszeit, Himmelshelligkeit, Detektoreigenschaften und Aperturgröße abhängt. @bolte_sn_2004

Man unterscheidet in der Praxis zwei wichtige Regime:

- *Read-noise-limited Regime*: Bei sehr kurzen Belichtungen oder sehr dunklem Himmel dominiert das Ausleserauschen RN die Rauschsumme. @bolte_sn_2004 @smiljanic_data_2019 In diesem Fall wird der Term $"RN"^2 · n_"pix"$ im Nenner vergleichbar oder größer als die photonischen Terme. Längere Einzelbelichtungen sind dann besonders effizient, weil sie das photonische Signal erhöhen, ohne das Ausleserauschen pro Bild zu steigern.

- *Sky-limited Regime*: Bei längeren Belichtungen unter typischen Himmelshintergrundbedingungen dominiert das Photonrauschen des Himmels (Term $R_"sky" · t · n_"pix"$) den Rauschbeitrag. @eso_sn_2004 @astrobasics_noise_2024 In diesem Fall wächst das Gesamtrauschen im Wesentlichen mit $sqrt(t)$, und das Ausleserauschen wird relativ unbedeutend. Zusätzliche Verlängerung der Einzelbelichtungszeit bringt dann nur noch den erwarteten $sqrt(t)$-Gewinn, aber kein „Bonus“ durch das Ausblenden des RN.

In der Deep-Sky-Astrofotografie wird typischerweise angestrebt, im sky-limited Regime zu arbeiten, also die Einzelbelichtungszeit so zu wählen, dass der Rauschbeitrag des Auslesens gegenüber dem Himmelrauschen vernachlässigbar ist. @astrobasics_noise_2024

Die Wahl einer „optimalen“ Sub-Exposure-Zeit (Einzelbelichtungszeit) ist ein zentrales praktisches Problem der Astrofotografie. Einerseits steigt das SNR eines Einzelbildes mit der Belichtungszeit, andererseits setzen mehrere Effekte Grenzen:

Erstens muss Sättigung vermieden werden. Die Full-Well-Kapazität des Sensors begrenzt die maximale Elektronenzahl pro Pixel; wird dieser Wert überschritten, geht Information verloren, und helle Sterne oder Kernbereiche von Galaxien „brennen aus“. @howell_ccd_2006 @hamamatsu_dynrange_2010 Da das Signal mit t wächst, existiert für helle Objekte eine obere Grenze der Einzelbelichtungszeit, bevor Sättigung eintritt. Zweitens steigt mit wachsender Belichtungszeit die Wahrscheinlichkeit, dass Satellitenspuren, Nachführfehler, Wind und Seeing-Fluktuationen ein Bild unbrauchbar machen; lange Sub-Exposures sind in diesem Sinne risikoreicher.

Auf der anderen Seite sollte die Einzelbelichtungszeit lang genug sein, damit das Himmelrauschen den Beitrag des Ausleserauschens dominiert. In der Praxis wird häufig ein Kriterium verwendet, nach dem die Varianz des Himmelrauschens mindestens einige Male größer sein sollte als die des Ausleserauschens (z. B. „sky noise ≈ 3× read noise“). @eso_sn_2004 @astrobasics_noise_2024 Ist dies erfüllt, spricht man von „sky-limited exposures“, bei denen weitere Verlängerung der Einzelbelichtungszeit im Wesentlichen nur noch den $sqrt(t)$-typischen SNR-Gewinn bringt. @eso_sn_2004

Für die Deep-Sky-Fotografie wird daher in der Literatur empfohlen, die Sub-Exposure-Zeit so zu wählen, dass: @bolte_sn_2004 @astrobasics_noise_2024  

- die hellsten interessierenden Bildteile (z. B. Sterne, Kerne von Galaxien) knapp unterhalb der Sättigung bleiben,  
- das Himmelrauschen pro Pixel den Ausleserauschenterm deutlich übersteigt,  
- gleichzeitig praktische Randbedingungen wie Nachführgenauigkeit, Seeing-Stabilität und verfügbare Gesamtzeit berücksichtigt werden.

Die Gesamtbildqualität wird nicht nur durch die Länge eines einzelnen Frames, sondern durch die gesamte Integrationszeit $T = N · t$ bestimmt, wobei N die Anzahl der Sub-Exposures ist. @bolte_sn_2004 Im regime des dominanten Photonrauschens wächst das SNR eines gestackten Bildes näherungsweise mit $sqrt(T)$, unabhängig davon, wie T zwischen vielen kurzen oder wenigen langen Belichtungen aufgeteilt wird, solange jede Einzelbelichtung hinreichend sky-limited ist. @eso_sn_2004 In der Praxis wird daher oft eine Familie geeigneter Sub-Exposure-Zeiten gewählt, die sich in einem Bereich bewegen, in dem der RN-Beitrag klein ist, aber Sättigung und praktische Risiken begrenzt bleiben.

== Begrenzende Faktoren der Bildqualität

Die bisher eingeführten Konzepte – Beugungsgrenze, atmosphärisches Seeing, Extinktion, Abbildungsmaßstab, Sampling, Sensorphysik und Rauschquellen – greifen in der Praxis ineinander und bestimmen gemeinsam die erreichbare Bildqualität in der Astrofotografie. Bildqualität ist dabei nicht eindimensional: Zum einen ist die Winkelauflösung relevant, also wie fein strukturierte Details aufgelöst werden können; zum anderen das Signal-Rausch-Verhältnis (SNR), das entscheidet, ob schwache Strukturen statistisch zuverlässig von Hintergrund und Rauschen unterscheidbar sind. @howell_ccd_2006 @keel_imaging_2007

Die Winkelauflösung wird durch die effektive Punktspreizfunktion (PSF) des Gesamtsystems begrenzt. Wie in den vorangegangenen Kapiteln beschrieben, setzt die Fraunhofer-Beugung an der Teleskopapertur eine theoretische Untergrenze für die PSF-Breite. Für ein beugungsbegrenztes System mit Apertur D und Wellenlänge λ ergibt sich der charakteristische Winkelmaßstab der Airy-Scheibe zu $theta_"Airy" approx 1,22 · (lambda / D)$. @telescope_psf_2009 In der bodengebundenen Astrofotografie wird diese Grenze jedoch fast immer von atmosphärischem Seeing übertroffen: Turbulente Brechungsindexfluktuationen vergrößern die PSF effektiv auf typische FWHM-Werte von etwa 1–2 Bogensekunden, selbst für große Teleskope. @littlefair_ao_lecture_2018 In diesen Fällen ist die Winkelauflösung primär seeing-begrenzt und nicht mehr durch die nominale Apertur des Teleskops. Das Sampling des Sensors wirkt als weiterer „Flaschenhals“: Ist der Pixelmaßstab deutlich gröber als die Seeing-Scheibe (Untersampling), wird die PSF durch das Pixelraster unterabgetastet, sodass selbst vorhandene Details nicht korrekt rekonstruiert werden können. @astrobasics_nyquist_2025 @starizona_nyquist_2020

Parallel dazu bestimmen Photonstatistik und Detektorrauschen, wie gut das tatsächlich abgebildete Signal von zufälligen Schwankungen unterscheidbar ist. Das Signal-Rausch-Verhältnis wurde in Abschnitt 2.5 als $"SNR" = (mu_S / sigma_N)$ definiert, wobei μ_S den mittleren Signalanteil (z. B. Elektronen aus dem Objekt) und σ_N die Gesamtstandardabweichung des Rauschens beschreibt. @bolte_sn_2004 Im photonendominierten Bereich wächst das SNR mit der Wurzel der gesammelten Signal-Elektronen (bzw. der Belichtungszeit), während es durch Beiträge von Himmelshintergrund, Dunkelstrom und Ausleserauschen begrenzt wird. @bolte_sn_2004 @eso_sn_2004 Eine hohe Winkelauflösung allein genügt daher nicht: Ein feines Detail ist nur dann sichtbar, wenn es auch mit ausreichendem SNR erfasst wird. Umgekehrt kann bei sehr hohem SNR eine grobe, seeing-dominierte PSF die Trennung enger Strukturen verhindern – die Information ist dann zwar rauscharm, aber räumlich verwaschen. @gerwe_psf_snr_2014

Die Extinktion der Atmosphäre reduziert den am Teleskop verfügbaren Photonfluss wellenlängen- und luftmassenabhängig und verschlechtert damit sowohl die erreichbare SNR als auch indirekt die effektive Auflösung. @massey_atmos_2000 Eine stärkere Extinktion verringert das Signal pro Pixel, erhöht die relative Bedeutung des Rauschens und limitiert die Tiefe, bis zu der schwache Objekte detektiert werden können. Gleichzeitig führt schlechteres Seeing, das häufig mit atmosphärisch instabilen Bedingungen einhergeht, zu breiteren PSFs. Die Optik und ihre Transmission wirken in ähnlicher Weise: Verluste durch unvergütete Flächen oder verschmutzte Komponenten reduzieren das Signal, ohne das Rauschen im Sensor im gleichen Maße zu senken, und führen daher zu einem schlechteren SNR bei gleichbleibender geometrischer Auflösung. @howell_ccd_2006

Eine klare begriffliche Trennung ist hilfreich: Die Winkelauflösung beschreibt die kleinste trennbare Struktur im Bild und wird im Wesentlichen durch die Breite der effektiven PSF bestimmt – also durch Beugung, Seeing, optische Abbildungsfehler und das gewählte Sampling. @telescope_psf_2009 @astrojolo_pixelscale_2020 Das Signal-Rausch-Verhältnis hingegen beschreibt die statistische Detektierbarkeit von Strukturen: Es quantifiziert, ob eine Helligkeitsvariation über dem Hintergrund groß genug ist, um nicht im Rauschen zu verschwinden. @bolte_sn_2004 Beide Größen sind notwendig, um Bildqualität zu beurteilen: Ein System mit sehr hoher Auflösung (kleiner PSF) aber schlechtem SNR zeigt zwar feine, aber verrauschte Strukturen, während ein System mit hohem SNR, aber großer PSF zwar glatte, aber detailarme Bilder erzeugt. In der Praxis muss die Astrofotografie daher immer einen Kompromiss aus Auflösungsfähigkeit und SNR finden, der an die Beobachtungsziele angepasst ist. @keel_imaging_2007

== Lösungsansätze in der Astrofotografie

Die in den vorigen Abschnitten beschriebenen physikalischen und technischen Grenzen – Beugungsgrenze, Seeing, Extinktion, Sampling, Sensorrauschen und begrenztes Signal-Rausch-Verhältnis – lassen sich nicht vollständig aufheben, aber durch geeignete Lösungsansätze in der Astrofotografie mindern. Ziel dieser Ansätze ist es, die effektive PSF zu verkleinern, den nutzbaren Photonfluss zu erhöhen, das SNR zu verbessern oder Störeinflüsse nachträglich algorithmisch zu kompensieren. @howell_ccd_2006 @keel_imaging_2007

Ein naheliegender Ansatz ist die Verwendung größerer Aperturen. Eine größere Öffnung D erhöht die geometrische Sammelfläche und damit den Photonfluss aus dem Objekt proportional zu $D^2$, während die beugungsbedingte Winkelauflösung proportional zu $lambda / D$ abnimmt. @howell_ccd_2006 Unter beugungsbegrenzten Bedingungen bedeutet dies sowohl mehr Signal als auch feinere Auflösung. Auf der Erde ist die Winkelauflösung jedoch meist seeing-begrenzt, sodass eine Öffnungssteigerung über einen bestimmten Bereich hinaus primär das SNR verbessert, nicht mehr die PSF-Breite, da das Seeing zur dominanten Limitierung wird. In der Praxis müssen daher größere Aperturen mit weiteren Maßnahmen wie adaptiver Optik oder sehr guter Standortwahl kombiniert werden, um ihre theoretische Auflösungsfähigkeit auszuschöpfen. @littlefair_ao_lecture_2018

Adaptive Optik (AO) adressiert explizit die durch das Seeing verursachten Wellenfrontverzerrungen. Ein Wellenfrontsensor misst in hoher zeitlicher Auflösung, wie die ankommende Wellenfront durch die Atmosphäre deformiert wird; ein verformbarer Spiegel kompensiert diese Verzerrungen in Echtzeit. @littlefair_ao_lecture_2018 @babcock_ao_1953 Auf diese Weise kann die effektive PSF eines großen Teleskops deutlich verkleinert und in Richtung der Beugungsgrenze verschoben werden, insbesondere im infraroten Spektralbereich. @littlefair_ao_lecture_2018 Sichtbares Licht erfordert noch schnellere und feinere Korrekturen und ist daher technisch deutlich anspruchsvoller; dennoch zeigen kombinierte AO- und Lucky-Imaging-Systeme bereits nahezu beugungsbegrenzte Abbildungen großer Teleskope im sichtbaren Bereich. @aoli_arxiv_2012 @gettinglucky_ao_2009

Lucky Imaging nutzt die Tatsache, dass das Seeing zeitlich stark schwankt. Statt einer einzigen langen Belichtung werden viele kurze Belichtungen aufgenommen, die jeweils unterschiedliche Seeing-Muster „einfrieren“. Anschließend werden nur jene Frames ausgewählt, in denen das atmosphärische Turbulenzmuster besonders günstig ist (z. B. anhand der Schärfe eines Referenzsterns), und diese werden ausgerichtet und gemittelt. @astralux_thesis_2007 So lassen sich in günstigen Momenten deutlich kleinere PSFs erzielen als im langbelichteten Seeing-Mittel. In Kombination mit niedrigordentlicher Adaptiver Optik (Adaptive Optics Lucky Imager, AOLI) konnten im sichtbaren Bereich bereits Auflösungen nahe der theoretischen Beugungsgrenze erreicht werden. @aoli_arxiv_2012

Spektrale Filter sind ein weiterer zentraler Lösungsansatz. Breitbandige Johnson-Cousins- bzw. Johnson/Bessell-Filter (U, B, V, R, I) definieren standardisierte photometrische Passbänder, über die Objekte mit kontrollierter spektraler Gewichtung beobachtet werden können. @aavso_filters_2017 @bessell_filters_2019 Schmalbandfilter (z. B. Hα, $[O "III"], [S "II"]$) selektieren enge Wellenlängenbereiche, die charakteristische Emissionslinien von Gasnebeln oder Supernova-Überresten enthalten, und unterdrücken gleichzeitig breitbandige Störquellen wie Lichtverschmutzung oder Luftglühen. @howell_ccd_2006 @aavso_filters_2017 Dadurch wird das SNR der Zielstruktur gegenüber dem Hintergrund erhöht, obwohl der absolute Photonfluss durch den Filter verringert wird. Anders formuliert ermöglichen Filter eine gezielte Verschiebung des Kontrastes zugunsten bestimmter physikalischer Prozesse im Objekt.

Ein wesentlicher Bestandteil moderner Astrofotografie ist die Bildnachverarbeitung. Dazu zählen Kalibrierungsschritte wie Bias-, Dark- und Flatfield-Korrektur, um sensorbedingte Offsets, Dunkelstrom und Empfindlichkeitsunterschiede auszugleichen, sowie weiterführende Schritte wie Hintergrundsubtraktion, Farbbalance, nichtlineare Gradationskurven und Schärfung. @smiljanic_data_2019 @keel_imaging_2007 Deconvolution-Verfahren nutzen das Modell $I(x,y) = (S * h)(x,y) + N(x,y)$, um die Wirkung der PSF (Faltung mit h) teilweise rückgängig zu machen und Kontrast feiner Strukturen zu erhöhen; dabei muss das Rauschen N(x,y) statistisch berücksichtigt werden, um Verstärkung von Artefakten zu vermeiden. @starck_inverse_2002 Solche Verfahren können die subjektiv wahrgenommene Schärfe deutlich verbessern, ändern aber nichts an den zugrunde liegenden physikalischen Grenzen von Auflösung und SNR.

Mehrfachbelichtungen und Stacking verknüpfen mehrere der oben genannten Ideen. Statt eine einzelne lange Belichtung vorzunehmen, werden viele kürzere Sub-Exposures aufgenommen – eine Strategie, die bereits in Abschnitt 2.5 diskutiert wurde. @bolte_sn_2004 Die Signalkomponenten addieren sich über alle Aufnahmen nahezu linear, während die zufälligen Rauschbeiträge nur mit der Wurzel der Anzahl der Bilder anwachsen. Das resultierende SNR verbessert sich damit näherungsweise um den Faktor \(\sqrt{N}\), wobei N die Anzahl der kombinierten Einzelbilder ist. @bolte_sn_2004 @starizona_optimum_2020 Gleichzeitig reduziert die Aufteilung in Sub-Exposures das Risiko, dass ein einzelner Fehler (z. B. Nachführfehler, Windstoß, Satellitenspur) die gesamte Integration unbrauchbar macht. Moderne Stacking-Algorithmen, die in späteren Kapiteln detailliert betrachtet werden, kombinieren Mehrfachbelichtungen mit Qualitätsselektion (ähnlich Lucky Imaging), Ausreißererkennung und subpixelgenauem Alignment. @starck_inverse_2002

== Stacking-Verfahren

Wie in den vorangegangenen Abschnitten gezeigt, ist jede einzelne Aufnahme durch eine endliche Punktspreizfunktion sowie durch verschiedene Rauschquellen begrenzt. Selbst bei optimal gewählten Sub-Exposure-Zeiten und gutem Equipment bleibt das Signal-Rausch-Verhältnis (SNR) einzelner Deep-Sky-Aufnahmen oft unzureichend, um sehr schwache Strukturen sichtbar zu machen. Stacking-Verfahren adressieren dieses Problem, indem sie mehrere registrierte Einzelbilder desselben Objekts kombinieren. Die grundlegende Idee besteht darin, dass sich das astronomische Signal in allen Aufnahmen konsistent zeigt, während das Rauschen weitgehend zufällig ist und sich bei geeigneter Mittelung teilweise herausmittelt. @bolte_sn_2004 @keel_imaging_2007

Aus statistischer Sicht wächst das SNR eines gestackten Bildes im photonendominierten Regime näherungsweise mit der Quadratwurzel der Anzahl N der kombinierten Aufnahmen (bei gleicher Einzelbelichtungszeit): $"SNR"_"stack" ~ sqrt(N)$. @bolte_sn_2004 @robin_stacking_1997 Ob die Bilder dabei aufsummiert oder gemittelt werden, spielt für das resultierende SNR keine Rolle, da sowohl Signal als auch Rauschen mit dem gleichen Faktor skaliert werden; die Mittelung ist in der Praxis nur bequemer, weil sie unabhängig von N direkt interpretierbare Intensitätswerte liefert. @robin_stacking_1997 @clark_stacking_2022

Das einfachste Stacking-Verfahren ist die arithmetische Mittelung (Average). Nach der Registrierung (Alignment) werden für jedes Pixel die Werte über alle N Aufnahmen gemittelt. @keel_imaging_2007 @dss_technical_2008 Ist $I_i(x,y)$ der Pixelwert der i-ten Aufnahme an der Position (x,y), so ergibt sich das gestackte Bild zu

$ I_"avg"(x,y) = 1/N sum_(i=1)^(N) I_i(x,y). $

Unter der Annahme, dass das Nutzsignal stationär und das Rauschen überwiegend zufällig ist, bleibt der mittlere Signalanteil erhalten, während die Standardabweichung des Rauschens um etwa den Faktor $sqrt(N)$ abnimmt. @bolte_sn_2004 Dieses Verfahren ist optimal, wenn keine oder nur sehr wenige Ausreißer wie kosmische Strahlen, Satellitenspuren oder sporadische Störungen im Datensatz vorhanden sind. @dss_technical_2008

Um robuste Ergebnisse bei realen Datensätzen zu erzielen, die häufig Ausreißer enthalten, werden alternative Integrationsschemata eingesetzt. Eine verbreitete Methode ist das Median-Stacking: Für jedes Pixel wird statt des Mittelwerts der Median der N Werte gebildet. @siril_stacking_2021 Der Median ist gegen einzelne extreme Werte unempfindlich und unterdrückt effektiv kurzzeitige Störungen wie kosmische Strahlen oder wandernde Objekte. @siril_stacking_2021 Allerdings ist der Median statistisch weniger effizient als der Mittelwert, sodass das SNR langsamer als im idealen \(\sqrt{N}\)-Fall zunimmt; insbesondere bei kleinen N kann das medianbasierte Stacking Details glätten und die effektive Dynamik einschränken. @clark_stacking_2022 Deshalb wird Median-Stacking oft bei kleineren Bildzahlen oder als Baustein in Outlier-Rejection-Verfahren verwendet. @astropixel_median_2023

Eine Kombination aus Effizienz und Robustheit liefern Sigma-Clipping-Verfahren. Beim klassischen Sigma-Clipping wird für jedes Pixel zunächst ein vorläufiger Mittelwert und eine Standardabweichung aus der Pixelstichprobe über alle N Bilder bestimmt. @dss_technical_2008 @siril_stacking_2021 Pixelwerte, die um mehr als einen vorgegebenen Faktor $kappa$ (z. B. 2–3) Standardabweichungen vom Mittelwert abweichen, werden als Ausreißer betrachtet und verworfen. Anschließend wird aus den verbleibenden Pixelwerten der Mittelwert neu berechnet. @siril_stacking_2021

Formell wird der Pixelstapel $I_i(x,y)$ zunächst durch Schätzen von Mittelwert $mu$ und Standardabweichung $sigma$ charakterisiert und dann auf jene Werte eingeschränkt, die $|I_i(x,y) - mu| ≤ kappa sigma$ erfüllen. Das endgültige Stacking-Ergebnis ist der Mittelwert der bereinigten Stichprobe. @dss_technical_2008 Sigma-Clipping entfernt damit effizient sporadische Störungen, bewahrt aber weitgehend die statistische Effizienz der Mittelung. Variante wie „Median-Sigma-Clipping“ ersetzen abgelehnte Werte durch den Median, um zusätzliche Robustheit zu erzielen. @siril_stacking_2021

Weitere Erweiterungen, wie Winsorized-Sigma-Clipping oder lineare Fit-Clipping, passen das Rejektionsverhalten an komplexere Verteilungen an und können insbesondere bei Gradienten, wechselnden Himmelshintergründen oder großen N Vorteile bringen. @siril_stacking_2021 Solche Verfahren werden in modernen Stacking-Pipelines (z. B. Siril, PixInsight, Astro Pixel Processor) eingesetzt, um die Integrationsqualität unter realen Beobachtungsbedingungen zu maximieren. @astropixel_median_2023

Eine besondere Rolle spielt das Stacking im Lucky Imaging, das bereits in Abschnitt 2.7 angesprochen wurde. Hier besteht der erste Schritt darin, aus einer großen Zahl sehr kurz belichteter Einzelbilder jene Teilmenge auszuwählen, bei der das Seeing besonders günstig war. @miller_lucky_2009 Die Auswahl erfolgt häufig über einen Schärfemaßstab (z. B. maximale Helligkeit des PSF-Zentrums oder Strehl-Parameter). @miller_lucky_2009 Anschließend werden die ausgewählten Frames subpixelgenau ausgerichtet (Shift-and-Add) und gemittelt. Dadurch wird das Effektivbild primär aus „Lucky Frames“ aufgebaut, in denen die Wellenfrontverzerrungen minimal waren. @gettinglucky_ao_2009 Im Unterschied zum Deep-Sky-Stacking liegt der Fokus hier vor allem auf der Verbesserung der Winkelauflösung, weniger auf extremen SNR-Gewinnen, und die Methode ist insbesondere für helle, hochauflösende Ziele wie Planeten oder Doppelsterne geeignet.

Ein weiterer Spezialfall ist das sogenannte Drizzle-Verfahren (Variable-Pixel Linear Reconstruction), das ursprünglich für das Hubble Space Telescope entwickelt wurde. @fruchter_drizzle_2002 Die Grundidee ist, dass mehrere leicht gegeneinander verschobene Aufnahmen eines unterabgetasteten Systems genutzt werden, um ein höheraufgelöstes Rekonstruktionsraster zu füllen. Jeder Eingangspixel wird als kleines „Tröpfchen“ auf ein feineres Raster projiziert; durch die unterschiedlichen Subpixel-Offsets können fehlende Informationen teilweise rekonstruiert werden und das effektive Sampling verbessert werden, ohne neues physikalisches Auflösungsvermögen zu schaffen. @fruchter_drizzle_2002 @dss_drizzle_forum_2021 In der Amateur-Astrofotografie wird Drizzling gelegentlich eingesetzt, um bei leicht untersampelten Systemen eine bessere Darstellung der PSF und feinere Strukturwiedergabe zu erzielen, vorausgesetzt es liegen genügend ditherte Aufnahmen vor. @dss_drizzle_forum_2021

In der Praxis umfasst ein Stacking-Workflow typischerweise mehrere Schritte: zunächst die Kalibrierung aller Rohaufnahmen (Bias/Dark/Flat), dann die astrometrische Registrierung, optional die Qualitätsselektion (z. B. nach FWHM oder Hintergrundrauschen), und schließlich die Wahl eines Integrationsverfahrens (Average, Median, Sigma-Clipping etc.). @smiljanic_data_2019 @dss_technical_2008 @starck_inverse_2002 Eine schematische Abbildung dieser Pipeline ergibt sich in @pipeline.

#figure(
  image("assets/PhotometricPipeline1.png", width: 80%),
  caption: [Abbildung eines beispielhaften Stacking-Workflows. Quelle: @pic_stackingWorkflow]
) <pipeline>

= Methodik

== Forschungsdesign

Das Ziel der vorliegenden Studienarbeit besteht darin, die Grenzen der Astrofotografie systematisch zu untersuchen. Dabei wird ein besonderer Fokus auf das Stacking-Verfahren gelegt. Zur Erfüllung des vorangegangenen Ziels wurde ein Forschungsdesign gewählt, welches sowohl theoretische als auch praktische Aspekte miteinander kombiniert. Diese hybride Vorgehensweise erlaubt es, algorithmische und mathematische Konzepte nicht nur abstrakt zu analysieren, sondern auch deren Wirksamkeit und Grenzen unter realen Aufnahmebedingungen zu evaluieren.
Das Forschungsdesign folgt dabei einem sequenziellen Ansatz: Zunächst werden die theoretischen Grundlagen der Astrofotografie und des Image Stackings erarbeitet und strukturiert dargestellt. Im Rahmen der praktischen Übung erfolgt die Anwendung ausgewählter Stacking-Techniken auf selbst aufgenommene oder bereitgestellte astronomische Bilddaten. Dieser Schritt gründet auf den zuvor erarbeiteten theoretischen Modellen. Die Ergebnisse dieser praktischen Experimente dienen anschließend als empirische Grundlage für die Analyse der Grenzen sowohl des eingesetzten Equipments als auch der verwendeten Algorithmen.
Die methodische Trennung zwischen Theorie und Praxis erlaubt es, Annahmen aus der Literatur gezielt mit realen Beobachtungsdaten zu konfrontieren. Der Fokus der Untersuchung liegt auf der Ermittlung der praktischen Wirksamkeit der theoretisch prognostizierten Verbesserungen des Signal-Rausch-Verhältnisses durch Stacking. Es wird analysiert, inwiefern diese Verbesserungen durch physikalische und technische Einflussfaktoren limitiert werden.

Der theoretische Teil des Forschungsdesigns basiert auf einer umfassenden Literaturrecherche zu den physikalischen Grundlagen der Astrofotografie, zu Rauschmodellen sowie zu mathematischen und algorithmischen Prinzipien des Image Stackings. Diese theoretischen Überlegungen bilden die konzeptionelle Grundlage für die Auswahl geeigneter Stacking-Strategien und Untersuchungsparameter im praktischen Teil der Arbeit.
Im Rahmen der praktischen Übung erfolgt die Aufnahme astronomischer Bilddaten unter Verwendung eines Teleskopsystems oder die Nutzung bereits vorhandener Datensätze. Im Anschluss erfolgt die weitere Verarbeitung der gewonnenen Einzelaufnahmen unter Verwendung spezialisierter Software für die Astrofotografie und Bildbearbeitung. Im Rahmen der Untersuchung werden verschiedene Stacking-Methoden angewendet und variiert, um deren Einfluss auf die Bildqualität systematisch zu analysieren.
Für das Forschungsdesign ist es von wesentlicher Bedeutung, dass die praktische Umsetzung nicht primär auf die Erzeugung ästhetisch optimierter Astrofotografien abzielt, sondern auf eine kontrollierte und nachvollziehbare Datengrundlage. Die dabei entstehenden Bilder dienen als Untersuchungsobjekte, anhand derer algorithmische Effekte, Qualitätsverbesserungen und deren Grenzen analysiert werden können.

Ein zentrales Element des Forschungsdesigns stellt die bewusste Fokussierung auf den Stacking-Prozess als Kernmethode der Bildverbesserung dar. Andere Aspekte der Astrofotografie, wie etwa aufwendige Nachbearbeitungsschritte zur ästhetischen Optimierung, werden methodisch klar vom eigentlichen Stacking getrennt betrachtet oder bewusst nur in standardisierter Form eingesetzt.
Diese Separation ist essenziell, um den Einfluss des Stackings isoliert analysieren zu können. Insbesondere sind Effekte, die durch Kontrastanpassungen, Farbkorrekturen oder nichtlineare Transformationen entstehen, von der Interpretation als Leistungssteigerungen des Stackings zu unterscheiden. Das Forschungsdesign sieht daher vor, dass vor und nach dem Stacking vergleichbare Bearbeitungsschritte angewendet werden oder diese in der Analyse explizit berücksichtigt werden.
Darüber hinaus wird das eingesetzte Equipment – insbesondere Optik, Montierung und Sensor – nicht als austauschbare Variable betrachtet, sondern als integraler Bestandteil des methodischen Rahmens. Die Analyse der Leistungsfähigkeit und der Grenzen des Stackings erfolgt stets im Kontext der vorhandenen Hardware, da diese maßgeblich die Qualität der Rohdaten bestimmt.

Ein wesentliches methodisches Ziel besteht darin, die durchgeführten Untersuchungen nachvollziehbar und reproduzierbar zu gestalten. Aus diesem Grund erfolgt eine lückenlose Dokumentation sämtlicher relevanter Parameter, Softwareeinstellungen und Verarbeitungsschritte. Das Forschungsdesign verzichtet bewusst auf den Einsatz experimenteller oder proprietärer Verfahren, deren Ergebnisse nur schwer reproduzierbar wären.
Zudem erfolgt eine präzise Abgrenzung des Untersuchungsrahmens. Die vorliegende Arbeit beansprucht nicht, eine vollständige Abdeckung aller existierenden Stacking-Algorithmen oder Bildverarbeitungstechniken zu bieten. Stattdessen fokussiert sich das Forschungsdesign auf repräsentative Verfahren, die in der Praxis der Astrofotografie weit verbreitet sind und deren theoretische Grundlagen gut dokumentiert sind.

== Versuchsplanung

Die Versuchsplanung konkretisiert das zuvor beschriebene Forschungsdesign und legt fest, wie die praktischen Untersuchungen zur Analyse der Grenzen des Image Stackings durchgeführt werden. Dies umfasst die Auswahl geeigneter Untersuchungsparameter sowie die Festlegung der zu beobachtenden Himmelskörper als Versuchsobjekte.
Gemäß der Versuchsplanung wird das Ziel verfolgt, eine strukturierte und vergleichbare Datengrundlage zu schaffen. Diese soll es ermöglichen, die Auswirkungen unterschiedlicher Stacking-Strategien systematisch zu analysieren. In diesem Kontext wird besonderer Wert auf eine kontrollierte Variation einzelner Parameter gelegt, um deren Einfluss isoliert bewerten zu können.

Die Selektion der Untersuchungsparameter erfolgt unter Berücksichtigung der zentralen Einflussfaktoren, die sowohl in der wissenschaftlichen Literatur als auch in der praktischen Astrofotografie als signifikant für die Effektivität des Stackings identifiziert werden. Zu den maßgeblichen Parametern zählen insbesondere:

- Anzahl der Einzelaufnahmen
- Belichtungszeit pro Aufnahme
- ISO- bzw. Gain-Einstellungen des Sensors
- Qualität der Nachführung
- Auswahl des Stacking-Verfahrens (z. B. Mittelwert, Median, gewichtete Verfahren)

Es erfolgt keine willkürliche Variation dieser Parameter, sondern eine Begrenzung auf methodisch sinnvolle Bereiche, die den realistischen Einsatzbedingungen des verwendeten Equipments entsprechen. Das Ziel besteht darin, praxisnahe Aussagen über die Grenzen des Stackings zu treffen, anstatt sich auf theoretisch extreme, aber praktisch irrelevante Szenarien zu konzentrieren.
Die Variation der Parameter erfolgt sukzessive, sodass die Auswirkungen einzelner Änderungen nachvollzogen werden können. Der Fokus der Untersuchung liegt auf der Ermittlung des Punktes, ab dem eine Steigerung der Bildanzahl lediglich marginale oder keine signifikanten Verbesserungen der Bildqualität mehr bewirkt. Diese Vorgehensweise gestattet eine kritische Überprüfung des theoretisch postulierten Zusammenhangs zwischen Bildanzahl und Signal-Rausch-Verhältnis.

Die Selektion der Versuchsobjekte erfolgt nach Kriterien, die sowohl methodische als auch praktische Aspekte berücksichtigen. Die Auswahl geeigneter Himmelskörper erfolgt unter Berücksichtigung zweier Aspekte: Einerseits müssen die Objekte eine ausreichende Helligkeit aufweisen, um mit dem verfügbaren Equipment zuverlässig erfasst werden zu können, andererseits jedoch genügend feine Strukturen oder schwache Signalanteile aufweisen, um die Grenzen des Stackings sichtbar zu machen.
Typische Versuchsobjekte sind daher großflächige Nebel, Galaxien oder Sternhaufen, bei denen sowohl punktförmige als auch diffuse Strukturen vorhanden sind. Diese Objektarten eignen sich in besonderer Weise, um die Wirkung des Stackings auf unterschiedliche Signaltypen zu analysieren. Punktquellen, wie Sterne, zeigen eine andere Reaktion auf das Stacking-Verfahren als ausgedehnte, flächige Strukturen, was eine differenzierte Betrachtung ermöglicht.

Darüber hinaus erfolgt die Aufnahme der ausgewählten Himmelskörper unter vergleichbaren Beobachtungsbedingungen, um externe Einflüsse, wie unterschiedliche atmosphärische Bedingungen, möglichst gering zu halten. Gemäß der Versuchsplanung werden für ein Objekt mehrere Aufnahmeserien mit identischen Einstellungen durchgeführt, um statistische Schwankungen zu reduzieren.
Die Himmelskörper fungieren dabei nicht primär als Objekte astronomischer Forschung, sondern als strukturierte Testdaten für die Untersuchung der Stacking-Methodik. Die Selektion erfolgt demnach unter Berücksichtigung ihrer Eignung zur Analyse algorithmischer Effekte und nicht auf Grundlage ihrer astrophysikalischen Besonderheit.

== Datenerhebung

Die Datenerhebung bildet die empirische Grundlage der vorliegenden Untersuchung. Das Ziel besteht darin, eine qualitativ konsistente und reproduzierbare Datenbasis zu schaffen, die eine differenzierte Analyse der Leistungsfähigkeit und Grenzen von Stacking-Verfahren ermöglicht. In diesem Kontext wird besonderer Wert auf die systematische Dokumentation aller relevanten Einflussfaktoren gelegt, um die Nachvollziehbarkeit und Vergleichbarkeit von späteren Bewertungen zu gewährleisten.

Die Datenerhebung ist in drei zentrale Bereiche untergliedert: das eingesetzte Equipment, die Aufnahmebedingungen sowie die Erfassung von Kalibrierungsdaten. Es sei darauf hingewiesen, dass eine enge methodische Verknüpfung zwischen den betreffenden Komponenten besteht. Diese Tatsache ist dadurch bedingt, dass sie in ihrer Gesamtheit die Qualität und Aussagekraft der Rohdaten determinieren.

Das verwendete Equipment stellt einen wesentlichen methodischen Rahmenfaktor dar, da es sowohl die erreichbare Auflösung als auch das Rauschverhalten und die Lichtausbeute bestimmt. In diesem Arbeitskontext wird das Equipment nicht lediglich als technisches Hilfsmittel betrachtet, sondern als integraler Bestandteil der Untersuchungsbedingungen.
Zum Einsatz kommt ein astronomisches Teleskopsystem, das aus folgenden Komponenten besteht:

- einer optischen Einheit (z. B. Refraktor oder Reflektor)
- einer äquatorialen oder azimutalen Montierung mit Nachführfunktion
- einer digitalen Kamera (DSLR, spiegellose Systemkamera oder spezielle Astrokamera)
- optionalem Zubehör wie Guiding-System, Filter oder Korrektoren

Die Qualität der Optik des Teleskops ist dabei von entscheidender Bedeutung für die Abbildungsleistung, insbesondere in Bezug auf Auflösung, Kontrast und Abbildungsfehler. Faktoren wie das Öffnungsverhältnis, die Brennweite und die Apertur beeinflussen direkt die Lichtstärke und somit auch die erforderliche Belichtungszeit. Gleichzeitig determinieren sie das Bildfeld und die Abbildungsmaßstäbe, was wiederum Einfluss auf die Wahl geeigneter Himmelsobjekte hat.
Die Aufgabe der Montierung besteht in der Kompensation der Erdrotation. Die mechanische Präzision des Instruments wirkt sich unmittelbar auf die Sternabbildung in längeren Belichtungen aus. Ungenauigkeiten in der Nachführung können zu Verzerrungen oder elongierten Sternabbildungen führen, die durch das Stacking nicht vollständig kompensiert werden können. Aus diesem Grund wird die Nachführleistung als wesentlicher Parameter dokumentiert.

Die Kamera fungiert als Schnittstelle zwischen optischem Signal und digitaler Datenverarbeitung. Die Qualität der Rohdaten wird insbesondere durch die Quanteneffizienz, das Ausleserauschen, den Dunkelstrom und den Dynamikumfang der Sensoreigenschaften bestimmt. Darüber hinaus sind ISO- oder Gain-Einstellungen, Sensortemperatur sowie die interne Signalverarbeitung zu berücksichtigen. Für die Zwecke der vorliegenden Untersuchung werden möglichst verlustfreie Rohdatenformate (RAW) verwendet, um eine unverfälschte algorithmische Analyse zu gewährleisten.
Die vollständige Konfiguration des Equipments wird in tabellarischer Form dokumentiert (siehe Anhang der Arbeit), um Transparenz und Reproduzierbarkeit sicherzustellen.

HIER TABELLE EINFÜGEN MIT EQUIPMENT

Neben dem Equipment beeinflussen die Aufnahmebedingungen die Qualität der erhobenen Daten in erheblichem Maße. Zu den wichtigsten externen Faktoren zählen atmosphärische Bedingungen, Lichtverschmutzung, Temperatur sowie die Stabilität der Aufstellung.

Atmosphärische Turbulenzen (Seeing) führen zu zeitlich variierenden Verzerrungen des einfallenden Lichts. Diese Effekte manifestieren sich in Form von schwankender Sternschärfe und begrenzen damit die effektiv erreichbare Auflösung, und dies unabhängig von der theoretischen Leistungsfähigkeit der Optik. Im Rahmen der Aufnahmesitzungen erfolgt eine qualitative Dokumentation der Qualität des Sehens.
Die Lichtverschmutzung stellt insbesondere bei der fotografischen Dokumentation städtischer oder stadtnaher Gebiete einen signifikanten Störfaktor dar. Die vorliegende Funktion dient der Erhöhung des Hintergrundpegels des Bildes sowie der Reduktion des Kontrastes schwacher Objekte. Die Himmelsqualität wird daher ebenfalls protokolliert, beispielsweise durch subjektive Einschätzung oder bekannte Klassifikationssysteme (z. B. Bortle-Skala).
Die Temperatur wirkt sich dabei insbesondere auf das thermische Rauschen des Sensors aus. Insbesondere bei längeren Belichtungszeiten kann ein erhöhter Dunkelstrom signifikante Artefakte verursachen. Sofern dies realisierbar ist, werden die Sensortemperaturen erfasst oder zumindest die Umgebungstemperatur dokumentiert.

Um vergleichbare Bedingungen sicherzustellen, sollten die Aufnahmen eines Versuchsobjekts möglichst innerhalb einer zusammenhängenden Beobachtungssitzung durchgeführt werden. Diese Vorgehensweise gewährleistet, dass externe Einflussgrößen während einer Serie nur minimal variieren.

Ein zentraler Bestandteil des Erhebungsprozesses stellt die Erfassung von Kalibrierungsdaten dar. Diese dienen der Korrektur systematischer Fehler und sind notwendig, um die eigentliche Leistungsfähigkeit der Stacking-Algorithmen untersuchen zu können.

In der vorliegenden Untersuchung werden die folgenden Arten von Kalibrierungsbildern berücksichtigt:

- Dark Frames sind Aufnahmen, die unter identischen Belichtungszeit und Sensoreinstellung wie die Lichtbilder angefertigt werden, jedoch bei abgedeckter Optik. Ihre Funktion besteht in der Erfassung des thermischen Rauschens sowie fester Sensormuster.
- Flat Frames sind Aufnahmen einer homogenen Lichtquelle, die zur Korrektur von Vignettierung und Staubartefakten eingesetzt werden.
- Bias Frames sind eine spezielle Art der fotografischen Aufnahme, bei der die Belichtung für einen sehr kurzen Zeitraum erfolgt, um das sogenannte Ausleserauschen zu erfassen.

Die Erstellung der Kalibrierungsdaten erfolgt unter möglichst identischen technischen Bedingungen wie die eigentlichen Lichtaufnahmen. Ihre Verwendung ist aus methodischer Sicht von entscheidender Bedeutung, da nicht korrigierte systematische Fehler die Analyse der Stacking-Effekte verfälschen würden. Das Ziel besteht darin, zufälliges Rauschen und systematische Artefakte klar voneinander zu differenzieren.

== Datenverarbeitung

Nach Abschluss der Datenerhebung erfolgt die strukturierte Datenverarbeitung. In diesem Kapitel werden die algorithmischen und softwaretechnischen Schritte erörtert, die von den Rohdaten bis zum analysierbaren Ergebnisbild durchgeführt werden. Die vorliegende Verarbeitung ist in zwei Phasen unterteilt: den eigentlichen Stacking-Prozess sowie die anschließende Nachbearbeitung.

Der Stacking-Prozess bildet den methodischen Kern der praktischen Untersuchung. Das Ziel besteht darin, mehrere Einzelaufnahmen desselben Himmelsobjekts so zu kombinieren, dass das Nutzsignal verstärkt und zufälliges Rauschen reduziert wird.
Der Prozess umfasst in der Regel folgende Schritte:

+ Kalibrierung der Rohdaten: Anwendung von Dark-, Flat- und Bias-Korrekturen zur Reduktion systematischer Fehler.
+ Registrierung (Alignment): Präzise Ausrichtung der Einzelbilder anhand identifizierter Sternpositionen. Hierbei werden Transformationsmodelle verwendet, die Translation, Rotation und gegebenenfalls Skalierung berücksichtigen.
+ Qualitätsbewertung der Frames: Optional erfolgt eine Selektion oder Gewichtung einzelner Aufnahmen basierend auf Kriterien wie Sternschärfe oder Hintergrundrauschen.
+ Kombination der Bilder: Anwendung eines definierten Stacking-Algorithmus, beispielsweise:
  - arithmetisches Mittel
  - Median
  - Sigma-Clipping
  - gewichtete Mittelwertverfahren

Die Selektion des spezifischen Verfahrens erfolgt im Rahmen der Versuchsplanung. Ziel ist es, die Unterschiede zwischen den Methoden hinsichtlich Rauschreduktion, Detailerhalt und Artefaktunterdrückung zu verdeutlichen.
Die Verwendung von Softwarewerkzeugen und Parametern wird lückenlos dokumentiert, um die Nachvollziehbarkeit des Prozesses zu gewährleisten. Im Rahmen des Stacking-Prozesses werden die Algorithmen unter Verwendung variierender Parameter mehrfach ausgeführt. Ziel dieser Vorgehensweise ist die Analyse der Sensitivitäten und der Stabilität der Algorithmen.

Die Nachbearbeitung erfolgt nach Abschluss des Stackings und dient primär der Sichtbarmachung der im gestackten Bild enthaltenen Informationen. In Bezug auf die Methodik wird eine Differenzierung zwischen analytischer und ästhetischer Nachbearbeitung vorgenommen.
Die analytische Nachbearbeitung umfasst lineare Transformationen wie:

- Hintergrundnormalisierung
- Histogramm-Stretching
- Kontrastanpassung
- lineare Farbkalibrierung

Diese Schritte sind notwendig, um die durch das Stacking verbesserte Signalqualität sowohl visuell als auch numerisch bewerten zu können.
Nichtlineare oder stark ästhetisch orientierte Bearbeitungsschritte – wie beispielsweise aggressive Schärfung, selektive Farbmanipulation oder lokale Kontrastverstärkung – werden entweder standardisiert angewendet oder explizit von der quantitativen Analyse getrennt. Subjektive Bildoptimierungen werden so verhindert, dass sie die Bewertung der algorithmischen Leistungsfähigkeit nicht verfälschen.

Die finale Bildversion dient sowohl der qualitativen visuellen Beurteilung als auch der quantitativen Analyse, beispielsweise durch Messung von Signal-Rausch-Verhältnissen oder Hintergrundstatistiken.

== Evaluationsmethoden

- Quantitative Metriken und qualitative Bewertung



= Konzeption

= Praktische Umsetzung

= Analyse und Evaluation

= Reflexion der Grenzen

= Fazit

= Ausblick

#lorem(50)

#lorem(120)

#lorem(80)