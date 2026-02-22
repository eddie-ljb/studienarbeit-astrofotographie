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

Dieser Abschnitt beschreibt, wie astronomische Objekte elektromagnetische Strahlung erzeugen und wie sich diese Strahlung im Photonenbild als Photonfluss am Teleskop und am Sensor ausdrücken lässt. Diese Begriffe bilden die physikalische Grundlage für die weitere Betrachtung der Grenzen der Astrofotografie. @smiljanic_em_2019 @smiljanic_obs_2019 @galyam_obs_2012

Die meisten Informationen über das Universum werden aus der Analyse der elektromagnetischen Strahlung gewonnen, die astronomische Objekte aussenden oder reflektieren. @smiljanic_em_2019 @smiljanic_obs_2019 @galyam_obs_2012 Diese Strahlung lässt sich als elektromagnetische Welle mit Wellenlänge λ und Frequenz ν beschreiben, die über die Beziehung λ · ν = c mit der Lichtgeschwindigkeit c verknüpft sind. @smiljanic_em_2019 Alternativ kann Licht im Teilchenbild als Strom masseloser Quanten (Photonen) aufgefasst werden, die diskrete Energiepakete transportieren. @smiljanic_em_2019 @galyam_obs_2012

Für die Astrofotografie ist insbesondere die Teilchen-Sicht relevant, da elektronische Detektoren letztlich einzelne Photonen registrieren und in elektrische Ladung umwandeln. @smiljanic_em_2019 @romanishin_ccd_2002 @bolte_sn_2004 Die Stärke des Bildsignals und das unvermeidliche Photonrauschen hängen direkt von der Anzahl der detektierten Photonen ab und lassen sich nur im Photonenbild adäquat beschreiben. @romanishin_ccd_2002 @bolte_sn_2004

Astronomische Objekte emittieren Strahlung über einen weiten Bereich des elektromagnetischen Spektrums, von Radiowellen bis Gammastrahlung. @esa_em_2002 @smiljanic_em_2019 Für die bodengebundene Astrofotografie ist vor allem das optische Fenster der Erdatmosphäre relevant, das grob den Bereich von etwa 300–900 nm umfasst und den sichtbaren Bereich (ca. 400–700 nm) sowie angrenzendes nahes Infrarot einschließt. @esa_em_2002 @smiljanic_em_2019

Für eine illustrative Darstellung des elektromagnetischen Spektrums und der atmosphärischen Transmissionsfenster eignet sich eine schematische Abbildung, wie sie beispielsweise von der Europäischen Weltraumorganisation (ESA) bereitgestellt wird. @esa_em_2002

Ein Photon mit der Frequenz ν besitzt die Energie

$ E = h · ν = (h · c) / lambda $

wobei h die Planck-Konstante und c die Lichtgeschwindigkeit im Vakuum ist. @smiljanic_em_2019 @libretexts_photon_2021

- E: Energie eines Photons [J]  
- h: Planck-Konstante ≈ 6,626 · 10^{-34} J·s  
- ν: Frequenz [Hz]  
- λ: Wellenlänge [m]  
- c: Lichtgeschwindigkeit ≈ 3,0 · 10^8 m/s  

Diese Gleichung folgt aus der Quantisierung der elektromagnetischen Strahlung in Energiequanten E = hν sowie der wellenoptischen Beziehung c = λν. @smiljanic_em_2019 @galyam_obs_2012 Kürzere Wellenlängen (blaues und ultraviolettes Licht) tragen somit mehr Energie pro Photon als längere Wellenlängen (rotes und infrarotes Licht). @smiljanic_em_2019 @libretexts_photon_2021

Für die Astrofotografie bedeutet dies, dass bei gleicher Strahlungsleistung im optischen Bereich langwelliges Licht mehr Photonen pro Sekunde liefert als kurzwelligeres Licht, da die Energie pro Photon kleiner ist. @libretexts_photon_2021 Da elektronische Detektoren Photonen zählen, wirkt sich dies direkt auf die erreichbare Signalstärke und das Signal-Rausch-Verhältnis in unterschiedlichen Filterbändern aus. @romanishin_ccd_2002 @bolte_sn_2004

Zur quantitativen Beschreibung der Strahlung werden in der Radiometrie Leistungsgrößen verwendet, die sich mit Hilfe der Photonenergie in photonische Größen übersetzen lassen. @wilson_era_2013 @pbrt_radiometry_2022

Wichtige radiometrische Größen sind: @wilson_era_2013 @pbrt_radiometry_2022

- Strahlungsleistung (radiant power) Φ_e [W]  
  Gesamtenergie pro Zeit, die in Form elektromagnetischer Strahlung transportiert wird.

- Bestrahlungsstärke (irradiance) E_e [W/m²]  
  Strahlungsleistung pro Fläche, die auf eine Detektorfläche fällt.

- Strahlungsflussdichte (flux density) f_ν oder f_λ [z. B. W/m²/Hz, W/m²/nm]  
  Strahlungsleistung pro Fläche und Frequenz- oder Wellenlängenintervall.

Diese Größen sind in der astronomischen und optischen Literatur formal definiert und bilden die Basis für photometrische Messungen. @wilson_era_2013 @pbrt_radiometry_2022

Im Photonenbild sind die folgenden Größen zentral: @libretexts_photon_2021

- Photonenzahl N: Anzahl der Photonen (dimensionslos).  
- Photonfluss Φ_p = dN/dt [Photons/s]: Anzahl der Photonen pro Zeit, die durch eine betrachtete Fläche oder ein System treten. @photonics_flux_2023  
- Photonflussdichte (Photonen-Bestrahlungsstärke) $Φ_{p,A} = d"N"/(d"t" · d"A")$[Photons $s^{-1} m^{-2}$]: Anzahl der Photonen pro Zeit und Fläche. @libretexts_photon_2021

Für (annähernd) monochromatische Strahlung oder Strahlung in einem schmalen spektralen Band mit Bestrahlungsstärke E_e [W/m²] bei Wellenlänge λ ergibt sich der Zusammenhang: @libretexts_photon_2021

$ Φ_{p,A} = E_e/E = E_e/(h · c / lambda) = (E_e · lambda)/(h · c) $

mit $Φ_{p,A}$ als Photonflussdichte [Photons s^{-1} m^{-2}] und E_e als Bestrahlungsstärke [W/m²]. Die Konstante h·c ist das Produkt aus Planck-Konstante und Lichtgeschwindigkeit. @libretexts_photon_2021 Die Formel ergibt sich daraus, dass Bestrahlungsstärke Energie pro Zeit und Fläche beschreibt und die Zahl der Photonen pro Zeit und Fläche gerade der Strahlungsleistung dividiert durch die Energie pro Photon entspricht. @libretexts_photon_2021

Diese Beziehung verbindet radiometrische Messgrößen mit der tatsächlich detektierten Photonenzahl und ist damit eine fundamentale Grundlage für die Berechnung erwarteter Photonenzahlen in der Astrofotografie. @romanishin_ccd_2002

In der optischen Astronomie wird die beobachtete Helligkeit eines Objekts über das Magnitudensystem beschrieben. @romanishin_ccd_2002 @smiljanic_meas_2019 Die Differenz der scheinbaren Magnituden zweier Objekte m₁ und m₂ ist über deren Flussdichten f₁ und f₂ durch

$ m_1 - m_2 = -2{,}5 · log_{10} ( f_1 / f_2 ) $

definiert. @romanishin_ccd_2002 Hier bezeichnet f typischerweise den Strahlungsfluss (oder die Strahlungsflussdichte) eines Objekts in einem bestimmten photometrischen Band. @romanishin_ccd_2002

Durch Umstellen erhält man das Flussverhältnis in Abhängigkeit von der Magnitudendifferenz: @romanishin_ccd_2002

$ f_1 / f_2 = 10^(-0,4(m_1 - m_2)) $

Ein Unterschied von 1 mag entspricht einem Flussverhältnis von etwa 2,512, ein Unterschied von 5 mag einem Faktor 100. @romanishin_ccd_2002 Da der Photonfluss im jeweiligen Band proportional zum Strahlungsfluss ist, gilt dieses Verhältnis auch für Photonflussdichten.

Photometrische Systeme werden über Referenzsterne (z. B. Vega) kalibriert, deren Fluss oder Photonfluss in den jeweiligen Bändern als Nullpunkt dient. @romanishin_ccd_2002 Kennt man den Fluss f_ref oder die Photonflussdichte $Φ_{p,"ref"}$ eines Sterns mit Magnitude m = 0 in einem Filterband, so lässt sich der Fluss eines Sterns der Magnitude m durch

$ f / f_"ref" = 10^(-0,4m) $

bestimmen. @romanishin_ccd_2002 Entsprechend skaliert die Photonflussdichte mit demselben Faktor 10^{-0,4 m}. @romanishin_ccd_2002 In der Literatur zur CCD-Photometrie finden sich konkrete Nullpunktflüsse, aus denen typische Photonflussdichten für 0-mag-Sterne im V-Band am oberen Atmosphärenrand berechnet werden können. @romanishin_ccd_2002 Diese Werte ermöglichen praxisnahe Abschätzungen erwarteter Photonenzahlen am Teleskop und dienen damit der Planung von Belichtungszeiten. @romanishin_ccd_2002

Die von einem Objekt empfangene Photonenzahl hängt linear von der effektiven Sammelfläche des optischen Systems ab. @wilson_era_2013 @howell_ccd_2006 Für ein Teleskop mit Aperturdurchmesser D ergibt sich zunächst die geometrische Öffnungsfläche

$ A_"geo" = \pi · D^2 / 4 $

mit D in Metern und A_geo in Quadratmetern. Aufgrund von Reflexionsverlusten an Spiegeln, Absorption in Linsen und Filtern sowie Obstruktionen durch Sekundärspiegel steht jedoch nur ein Teil dieser Fläche effektiv zur Verfügung. @howell_ccd_2006

Die effektive Sammelfläche kann durch

$ A_"eff" = A_"geo" · tau_"opt" $

beschrieben werden, wobei τ_opt die Gesamtdurchlässigkeit des optischen Systems (dimensionslos, 0–1) darstellt. @howell_ccd_2006 Diese Größe fasst alle optischen Verluste zusammen und bestimmt, wie viele Photonen pro Sekunde bei einem gegebenen Photonfluss tatsächlich das Detektorsystem erreichen. @howell_ccd_2006
Sei Φ_p die Photonflussdichte des astronomischen Objekts am Ort des Teleskops, dann ist die Zahl der vom Objekt eingefangenen Photonen pro Sekunde

$ N_"obj" = Φ_p · A_"eff" $

mit N_obj in Photons/s. @romanishin_ccd_2002 @wilson_era_2013 Berücksichtigt man zusätzlich die atmosphärische Transmission T_atm(λ) zwischen 0 und 1, ergibt sich am Boden

$ N_("obj","ground") = Φ_p · A_"eff" · T_"atm"(lambda) $

Die atmosphärische Transmission ist stark wellenlängenabhängig und reduziert insbesondere im blauen und ultravioletten Bereich den Photonfluss, während das optische Fenster eine vergleichsweise hohe Transmission aufweist. @esa_em_2002 @smiljanic_em_2019

Für ein ausgedehntes Objekt mit gegebener Oberflächenhelligkeit (z. B. in Magnituden pro Quadratbogensekunde) ist neben der Sammelfläche auch die Winkelskalierung des Systems entscheidend. @romanishin_ccd_2002 @bolte_sn_2004 Ein Pixel mit Winkelmaßstab θ_pix [Bogensekunden/Pixel] deckt am Himmel einen soliden Winkel Ω_pix ab (nach Umrechnung der Winkeleinheiten in Steradiant). @romanishin_ccd_2002

Der mittlere Photonenzufluss pro Pixel und Belichtungszeit t_exp ergibt sich näherungsweise zu

$ N_"pix" approx Φ_(p,"SB") · A_"eff" · Omega_"pix" · t_"exp" $

wobei $Φ_(p,"SB")$ die Photonflussdichte pro Steradiant ist. @romanishin_ccd_2002 @bolte_sn_2004 Dieser Ausdruck verknüpft die physikalische Oberflächenhelligkeit des Objekts mit der registrierten Photonenzahl im Pixel und bildet eine wichtige Grundlage für die Diskussion von Sampling und Signal-Rausch-Verhältnis.

Der Detektor wandelt eingehende Photonen mit der wellenlängenabhängigen Quanteneffizienz QE(λ) in Elektronen um. @howell_ccd_2006 @aavso_ccd_2013 Die mittlere Zahl der erzeugten Signal-Elektronen pro Pixel ist damit

$ N_e = N_"pix" · Q"E"(lambda) $

wobei N_e die Anzahl der registrierten Elektronen und QE(λ) eine dimensionslose Effizienz zwischen 0 und 1 ist. @howell_ccd_2006 @aavso_ccd_2013 Die Quanteneffizienz koppelt die astrophysikalische Photonenstatistik an das elektrische Signal und bestimmt, wie effizient Photonen unterschiedlicher Wellenlängen in messbare Signale umgesetzt werden. @howell_ccd_2006 @aavso_ccd_2013

== Atmosphäre und Transmission

Die Erdatmosphäre beeinflusst den Weg der Photonen vom astronomischen Objekt bis zum Detektor und begrenzt damit sowohl die effektive Signalstärke als auch die erreichbare Auflösung in der Astrofotografie. Sie schwächt das Signal durch Extinktion und verändert die Bilder durch turbulente Brechungsindexfluktuationen. @massey_atmos_2000 @spiff_atmos_rit_2005

Die durch die Atmosphäre laufende Strahlung wird abgeschwächt, weil Photonen absorbiert oder aus der Sichtlinie gestreut werden. @massey_atmos_2000 @airmass_wiki_2004 In der optischen Astronomie wird diese Abschwächung als atmosphärische Extinktion bezeichnet und hängt vor allem von der Luftmasse und von der Wellenlänge ab. Die sogenannte Transmission beschreibt die Lichtdurchlässigkeit von optischen Komponenten, darunter Linsen oder Filtern. @massey_atmos_2000


Die wichtigsten Beiträge zur Extinktion sind: @airmass_wiki_2004

- Rayleigh-Streuung an Luftmolekülen  
  Rayleigh-Streuung tritt an Teilchen auf, die deutlich kleiner als die Wellenlänge sind, und führt zu einer starken Wellenlängenabhängigkeit der Extinktion $∝ 1/λ⁴$. @massey_atmos_2000 @airmass_wiki_2004 Kurzwelliges (blaues, UV) Licht wird daher deutlich stärker gestreut als langwelliges (rotes) Licht, was unter anderem zum Blau des Tageshimmels führt.

- Mie-Streuung an Aerosolen  
  Mie-Streuung wird durch größere Partikel wie Staub, Tröpfchen und Aerosole verursacht und weist eine schwächere Wellenlängenabhängigkeit auf. @aerosol_bremen_2010 Sie trägt insbesondere im roten Spektralbereich und bei niedrigen Beobachtungshöhen zur Extinktion bei. @airmass_wiki_2004

- Molekulare Absorption  
  Moleküle wie Ozon (O₃), Wasserdampf (H₂O) und Sauerstoff (O₂) absor­bieren Photonen in bestimmten Spektralbändern. @airmass_wiki_2004 Dies führt zu charakteristischen Absorptionsbändern (z. B. Ozon im UV, Wasserbänder im nahen IR), in denen die Transmission stark reduziert ist. @esa_em_2002

Für die Astrofotografie bedeutet dies, dass die transmittierte Strahlung in einem Filterband durch alle drei Mechanismen gleichzeitig reduziert wird. Der Extinktionskoeffizient k(λ) fasst diese Effekte häufig effektiv pro Wellenlängenbereich zusammen (Einheit meist mag/Luftmasse). @massey_atmos_2000

Die Luftmasse X beschreibt, um welchen Faktor der Strahlungsweg durch die Atmosphäre gegenüber dem Zenit vergrößert ist. Der Zenit ist der Punkt, der senkrecht (90°) zum Beochbachtendem steht. @airmass_wiki_2004 Bei einem einfachen planparallelen Atmosphärenmodell erhält man für den Zenitwinkel z die Näherung

$ X approx sec(z) = 1 / cos(z) $

mit z als Winkel zwischen Beobachtungsrichtung und Zenit. @massey_atmos_2000 Für moderat große Zenitwinkel (typisch z ≲ 60°) liefert diese Beziehung hinreichend genaue Werte für photometrische Korrekturen. @massey_atmos_2000

Bei größeren Zenitwinkeln (d. h. nahe am Horizont) ist die planparallele Näherung nicht mehr ausreichend, und es werden empirisch verbesserte Formeln verwendet, beispielsweise

$ X approx sec(z) · [1 - 0,0012 · (sec^2(z) - 1)] $

die die Erdkrümmung und die vertikale Struktur der Atmosphäre besser berücksichtigen. @massey_atmos_2000

Die beobachtete Helligkeit F eines Objekts in einem Filterband wird durch die Extinktion gemäß

$ F_"obs" = F_0 · 10^(-0,4 · k(lambda) · X) $

abgeschwächt, wobei F₀ der extraterristrische Fluss (oberhalb der Atmosphäre), k(λ) der Extinktionskoeffizient in mag pro Luftmasse und X die Luftmasse ist. @massey_atmos_2000

- $F_"obs"$: beobachteter Fluss am Teleskop  
- F₀: Fluss ohne atmosphärische Dämpfung  
- k(λ): Extinktionskoeffizient [mag/Luftmasse]  
- X: Luftmasse (dimensionslos)

Die Formel folgt aus der Definition, dass eine Extinktion k·X in Magnituden einer logarithmischen Abschwächung des Flusses entspricht, und aus der Beziehung zwischen Magnitudendifferenz und Flussverhältnis. @massey_atmos_2000  

Typische Extinktionswerte in mittleren Breiten liegen beispielsweise bei etwa 0,4 mag/Luftmasse im niedrigeren Wellenlängenbereich (blau), 0,2 mag/Luftmasse im mittleren Wellenlängenbereich und 0,1 mag/Luftmasse im höheren Wellenlängenbereich, während im nahen IR die Extinktion weiter abnimmt. @unittoolbox_airmass_2001 Dies verdeutlicht, dass kurze Wellenlängen deutlich stärker von der Atmosphäre gedämpft werden als lange. @massey_atmos_2000

Da der Photonfluss direkt proportional zum Fluss F ist, reduziert die atmosphärische Extinktion die am Teleskop verfügbare Photonenzahl um denselben Faktor wie die Strahlungsleistung. @massey_atmos_2000 @romanishin_ccd_2002 Für die effektive Photonflussdichte $Φ_(p,"obs")$ gilt damit analog

$ Φ_(p,"obs") = Φ_(p,0) · 10^(-0,4 · k(lambda) · X) $

wobei $Φ_(p,0)$ die Photonflussdichte ohne atmosphärische Abschwächung ist. Die Folge ist, dass bei hoher Luftmasse und in kurzwelligen Filtern deutlich weniger Photonen den Detektor erreichen und damit für ein gegebenes Signal-Rausch-Verhältnis längere Belichtungszeiten erforderlich werden. Das Signal-Rausch-Verhältnis beschreibt dabei die Qualität eines Nutzsignals und setzt das Signal mit dem Rauschen ins Verhältnis. @massey_atmos_2000 @bolte_sn_2004 Dies verknüpft die Wahl der Beobachtungszeit (Objekt möglichst in der Nähe des Meridians) direkt mit der physikalischen Photonstatistik.

Neben der Extinktion verändert die Atmosphäre die räumliche Struktur des Lichts durch turbulente Fluktuationen des Brechungsindex. Die einfallenden Photonen werden an der Atmosphäre dadurch unterschiedlich gebrochen. @spiff_atmos_rit_2005 @seeing_wiki_2003 Diese Turbulenz führt dazu, dass die Wellenfronten verformt werden und ein punktförmiger Stern nicht als Beugungsscheibchen der Optik, sondern als verwaschene Seeing-Scheibe erscheint.
Unter astronomischem Seeing versteht man die durch die Atmosphäre verursachte zeitlich veränderliche Unschärfe und Verzerrung von Sternbildern. @seeing_wiki_2003


Die Atmosphäre weist auf verschiedenen Höhen und Skalen Temperatur- und Dichteschwankungen auf, die den Brechungsindex lokal verändern. @seeing_wiki_2003 Luftzellen mit leicht unterschiedlichem Brechungsindex bewegen sich durch das Teleskopfeld und verzerren die ankommende Wellenfront. @spiff_atmos_rit_2005

Integriert man diese Schwankungen entlang der Sichtlinie, erhält man ein stochastisches Wellenfrontfehlerfeld, das sich zeitlich ändert. @seeing_wiki_2003 Je nach Stärke der Turbulenz werden unterschiedliche räumliche Skalen dominieren, was durch das sogenannte C_N²-Profil (Strukturkonstante des Brechungsindex) beschrieben wird. @seeing_wiki_2003  

Für praktische Anwendungen fasst man die Wirkung der Turbulenz im Fried-Parameter r₀ zusammen.

Der Fried-Parameter r₀ (Fried’s coherence length) ist ein Maß für die Qualität der atmosphärischen Übertragung. @fried_param_wiki_2011 Er ist definiert als der Durchmesser einer Kreisöffnung, für die der durch die Atmosphäre verursachte rms-Wellenfrontfehler etwa 1 radian (≈ λ/6) beträgt. @seeing_tutorial_2024

- r₀: Fried-Parameter [m]  
  Durchmesser eines Bereiches der Eintrittspupille, über den die Wellenfront als „weitgehend kohärent“ angesehen werden kann.

Ist der Teleskopdurchmesser D deutlich kleiner als r₀, kann das System näherungsweise beugungsbegrenzt arbeiten; ist D deutlich größer als r₀, dominiert das Seeing, und die Auflösung wird nicht mehr durch die Optik, sondern durch die Atmosphäre begrenzt. @seeing_tutorial_2024 @littlefair_ao_lecture_2018

Typische Werte an guten Standorten liegen bei r₀ ≈ 10 cm bei λ = 500 nm, was einem Seeing von etwa 1″ entspricht. @littlefair_ao_lecture_2018 Der Fried-Parameter skaliert mit der Wellenlänge ungefähr wie

$ r_0 ~ lambda^(6/5) $

sodass im nahen Infrarot deutlich größere r₀-Werte und damit kleinere Seeing-Scheiben möglich sind als im sichtbaren Bereich. @littlefair_ao_lecture_2018 @fried_param_wiki_2011

Die Turbulenzzellen wandern mit den Winden über das Teleskop hinweg, sodass sich das Muster der Wellenfrontverzerrungen auf Zeitskalen von Millisekunden bis Sekunden ändert. @seeing_wiki_2003 Die charakteristische Zeit, über die die atmosphärischen Bedingungen im Mittel stabil bleiben, wird durch den atmosphärischen Zeitkonstanten t₀ beschrieben. @seeing_wiki_2003

- t₀: atmosphärische Kohärenzzeit [s]  
  Zeit, nach der sich das Turbulenzmuster signifikant verändert.

Für langbelichtete Bilder über viele t₀ hinweg ergibt sich ein gemitteltes Seeing-Bild, während kurzbelichtete Aufnahmen („Lucky Imaging“) Momente mit besonders geringem Wellenfrontfehler nutzen können. @seeing_wiki_2003 Dies erklärt, warum sehr kurze Einzelbelichtungen zu deutlich schärferen Einzelbildern führen können, obwohl die mittlere Seeing-Bedingung unverändert ist. @spiff_atmos_rit_2005

Der Einfluss der Atmosphäre auf die Abbildung eines punktförmigen Sterns lässt sich durch den FWHM-Durchmesser der Seeing-Scheibe in Bogensekunden charakterisieren. @seeing_wiki_2003 In der theoretischen Beschreibung der Kolmogorov-Turbulenz ergibt sich ein Zusammenhang zwischen Fried-Parameter r₀ und der FWHM des Seeing-Scheibchens (für langbelichtete Bilder) von näherungsweise

$ "FWHM"_"seeing" approx 0,98 · lambda / r_0 $

wobei λ die Beobachtungswellenlänge und r₀ der Fried-Parameter ist (beide in gleichen Längeneinheiten). @caltech_coronograph_2004  

Um den Wert in Bogensekunden auszudrücken, wird der Ausdruck mit dem Umrechnungsfaktor 206265 (Bogensekunden pro Radiant) multipliziert:

$ "FWHM"_"seeing"("arcsec") approx 0,98 · (lambda / r_0) · 206265 $

- λ: Wellenlänge [m]  
- r₀: Fried-Parameter [m]  
- FWHM_seeing: charakteristischer Seeing-Durchmesser [arcsec]

Die Formel zeigt, dass ein größerer Fried-Parameter (bessere atmosphärische Bedingungen) zu einem kleineren Seeing-Durchmesser führt und dass Seeing bei längeren Wellenlängen etwas günstiger ist. @littlefair_ao_lecture_2018

In der Praxis ergibt sich die beobachtete Punktspreizfunktion (PSF) eines Sterns aus der Faltung der optischen PSF des Teleskops mit der atmosphärischen PSF. @cfht_psf_1998

$ h_"eff" = h_"optik" * h_"atm" $

- h_eff: effektive PSF des Gesamtsystems  
- h_optik: PSF der beugungsbegrenzten Optik  
- h_atm: PSF der Atmosphäre (Seeing)

Die Faltung beschreibt mathematisch, dass das Bild eines Punktes durch jeden Teil des Systems „verschmiert“ wird. @cfht_psf_1998 Ist die atmosphärische PSF deutlich breiter als die optische Beugungsscheibe, dominiert h_atm, und das System ist seeing-begrenzt; ist hingegen die Optik der limitierende Faktor (z. B. bei Raumteleskopen oder mit leistungsfähiger Adaptiver Optik), bestimmt h_optik die effektive Auflösung. @cfht_psf_1998 @littlefair_ao_lecture_2018

Die Betrachtung von Extinktion und Seeing vervollständigt den Weg der Photonen vom astronomischen Objekt über die Atmosphäre bis in das Teleskop. Die Luftmasse und die wellenlängenabhängige Extinktion bestimmen, wie viele Photonen überhaupt den Detektor erreichen und damit die erreichbare Signalstärke und das Signal-Rausch-Verhältnis. @massey_atmos_2000 @bolte_sn_2004  

Gleichzeitig setzen turbulente Brechungsindexfluktuationen, beschrieben durch den Fried-Parameter r₀ und den Seeing-Scheibendurchmesser, eine reale Auflösungsgrenze, die häufig deutlich über der theoretischen Beugungsgrenze der Optik liegt. @seeing_wiki_2003 @fried_param_wiki_2011 Selbst ein perfektes, beugungsbegrenztes Teleskop kann diese Grenze ohne adaptive Optik nicht unterschreiten. Damit liefert die Atmosphäre eine zentrale physikalische Begründung dafür, warum die in der Optik ideal erreichbare Auflösung in der bodengebundenen Astrofotografie meist nicht ausgeschöpft werden kann. @littlefair_ao_lecture_2018

== Optische Systeme der Astrofotografie

Nachdem in den vorherigen Abschnitten der Ursprung der Photonen in astronomischen Strahlungsquellen sowie der Einfluss der Erdatmosphäre auf den Photonfluss und die Auflösung betrachtet wurden, richtet sich der Fokus nun auf die optischen Systeme, die diese Photonen sammeln und auf den Detektor abbilden. Teleskope und ihre optischen Komponenten bestimmen maßgeblich, wie effizient Photonen gesammelt, geleitet und in ein Abbild des Himmels überführt werden und welche theoretische Maximalauflösung dabei physikalisch erreichbar ist. @galyam_obs_2012 @howell_ccd_2006

Grundsätzlich lässt sich die Aufgabe eines Teleskops auf zwei zentrale Funktionen reduzieren: die Sammlung möglichst vieler Photonen durch eine große Öffnung sowie die Abbildung des einfallenden Lichts auf eine Bildebene mit definierter Abbildungsskala. In der Astrofotografie kommen unterschiedliche optische Konzepte zum Einsatz, die sich in Konstruktion, Abbildungsqualität und Eignung für verschiedene Anwendungsbereiche unterscheiden. @galyam_obs_2012

Refraktoren sind Linsenteleskope, bei denen das Licht durch ein Objektiv aus Glaslinsen gebündelt und in der Fokalebene abgebildet wird. @galyam_obs_2012 Das einfachste historische Design ist das achromatische Objektiv, das aus zwei Linsen unterschiedlicher Glasart besteht und die chromatische Aberration für zwei Wellenlängen minimiert. @galyam_obs_2012 Moderne apochromatische Refraktoren verwenden drei oder mehr Linsen, teilweise aus speziellen ED-Gläsern, um die chromatische Aberration über einen größeren Spektralbereich zu korrigieren. @galyam_obs_2012 @howell_ccd_2006 In der Astrofotografie sind Refraktoren insbesondere wegen ihres stabilen Justageverhaltens, ihres hohen Kontrasts und ihrer vergleichsweise gut korrigierten Bildfelder bei kleinen bis mittleren Öffnungen verbreitet. @howell_ccd_2006

Newton-Reflektoren nutzen einen konkaven Hauptspiegel, meist parabolisch geschliffen, der das einfallende Licht sammelt und zu einem Fokus lenkt, sowie einen planen Sekundärspiegel, der den Strahlengang seitlich zum Okular oder zur Kamera auslenkt. @galyam_obs_2012 @howell_ccd_2006 Da reflektierende Optiken im relevanten Bereich keine chromatische Aberration aufweisen, sind Newton-Teleskope spektral weitgehend farbrein. @galyam_obs_2012 Die zentrale Obstruktion durch den Sekundärspiegel verändert allerdings das Beugungsmuster und kann den Bildkontrast reduzieren. @howell_ccd_2006 Newton-Teleskope bieten bei gleicher Öffnung häufig ein günstiges Verhältnis zwischen Kosten und Lichtsammelleistung und sind daher im Amateurbereich weit verbreitet. @howell_ccd_2006

Schmidt-Cassegrain-Teleskope sind kompakte, katadioptrische Systeme, die Spiegel- und Linsenelemente kombinieren. @galyam_obs_2012 Ein sphärischer Hauptspiegel und ein konvexer Sekundärspiegel bilden eine gefaltete Cassegrain-Optik, während eine dünne Schmidt-Korrekturplatte an der Öffnung sphärische Aberration kompensiert. @galyam_obs_2012 Dadurch wird eine lange Brennweite bei relativ kurzer Bauform realisiert. @howell_ccd_2006 Schmidt-Cassegrain-Systeme sind aufgrund ihrer Vielseitigkeit – von der Planetenbeobachtung bis zur Deep-Sky-Astrofotografie – weit verbreitet, erfordern für großformatige Sensoren aber häufig zusätzliche Korrektoren, um ein ebenes und gut korrigiertes Bildfeld zu gewährleisten. @howell_ccd_2006

Astrographen sind speziell für fotografische Anwendungen optimierte Teleskope. Sie werden so ausgelegt, dass sie ein großes, ebenes Bildfeld mit hoher Korrektur klassischer Abbildungsfehler wie Astigmatismus, Koma und Feldkrümmung über den relevanten Spektralbereich liefern. @howell_ccd_2006 @galyam_obs_2012 Moderne Astrographen sind häufig schnelle Refraktor- oder Reflektorkonzepte mit integrierten Korrektorlinsen. @howell_ccd_2006 Ziel ist es, den Photonfluss möglichst effizient und ohne signifikante Bildverschlechterung bis in die Bildebene zu führen, sodass auch große Sensoren bis in die Ecken hinein nutzbare, scharfe Sterne zeigen. @howell_ccd_2006

Eine zentrale Kenngröße zur Charakterisierung optischer Systeme ist das Öffnungsverhältnis, auch f/Ratio genannt. Es ist definiert als das Verhältnis von Brennweite f zur Öffnung D des Teleskops, also $"Öffnungsverhältnis" = f/D$. @howell_ccd_2006 Das Öffnungsverhältnis beschreibt, wie „lichtstark“ ein System ist: Bei gegebener Objekthelligkeit ist die Beleuchtungsstärke in der Bildebene näherungsweise umgekehrt proportional zum Quadrat des f/Ratio. @howell_ccd_2006 Ein kleines f/Ratio (etwa f/3 bis f/5) kennzeichnet ein lichtstarkes System, das bei gleicher Belichtungszeit mehr Photonen pro Flächeneinheit auf den Sensor bringt und damit insbesondere für ausgedehnte Deep-Sky-Objekte vorteilhaft ist. @howell_ccd_2006 Ein großes f/Ratio (etwa f/10) reduziert die Photonendichte pro Flächeneinheit, vergrößert aber die Abbildungsskala, was etwa bei Detailaufnahmen von Planeten und kleinen Objekten hilfreich sein kann. @howell_ccd_2006

Zur Veranschaulichung bietet sich eine schematische Abbildung der grundlegenden Teleskoptypen (Refraktor, Newton-Reflektor, Schmidt-Cassegrain und Astrograph) an, welche jeweils den Strahlengang und die Position der optischen Elemente zeigt. Eine solche Darstellung findet sich in einführenden Werken zur Beobachtungsastronomie und erleichtert das Verständnis der unterschiedlichen Konzepte. @galyam_obs_2012

Neben der geometrischen Auslegung des optischen Systems spielt die Transmission eine entscheidende Rolle. Jede optische Oberfläche verursacht Reflexionen und Absorption, sodass ohne geeignete Beschichtungen nur ein Teil des einfallenden Lichts den Detektor erreicht. An einer unbehandelten Glas–Luft-Grenzfläche treten je nach Brechungsindex Reflexionsverluste von mehreren Prozent pro Fläche auf; in einem mehrlinsigen System summiert sich dies zu erheblichen Verlusten. @pbrt_radiometry_2022 Auch Spiegel weisen nur endliche Reflexionsgrade auf, typischerweise im Bereich von 85 bis 95 Prozent, sodass sich bei mehreren reflektierenden Flächen die effektive Durchlässigkeit des Systems spürbar verringert. @howell_ccd_2006

Antireflexbeschichtungen werden eingesetzt, um Reflexionsverluste an Glas–Luft-Grenzflächen zu minimieren. Durch dünne Schichten mit geeignetem Brechungsindex und definierter Schichtdicke lässt sich destruktive Interferenz der reflektierten Wellen erreichen, sodass der effektive Reflexionsgrad für bestimmte Wellenlängen deutlich reduziert wird. @pbrt_radiometry_2022 Mehrschichtvergütungen erweitern diesen Effekt auf einen größeren Spektralbereich. @pbrt_radiometry_2022 In der Astrofotografie erhöhen solche Vergütungen die Transmission der Optik und reduzieren interne Reflexionen und Geisterbilder, was unmittelbar den Kontrast und die nutzbare Signalstärke verbessert. @howell_ccd_2006

Zusätzlich zu direkten Reflexionsverlusten beeinträchtigen Streulicht und interne Reflexe die Bildqualität. Streulicht entsteht beispielsweise an rauen Oberflächen, Staub oder mechanischen Komponenten im Tubus und manifestiert sich als erhöhter Hintergrund oder als diffuse Aufhellungen um helle Sterne. @howell_ccd_2006 Um Streulicht zu minimieren, werden innen geschwärzte Flächen, Blenden und eine geeignete Tubusgeometrie eingesetzt. @howell_ccd_2006 Ein hoher Bildkontrast ist insbesondere für die Abbildung schwacher Strukturen entscheidend, die sich nur wenig vom Himmelshintergrund abheben.

Der effektive Signalfluss eines optischen Systems ergibt sich stets aus dem Zusammenspiel von Öffnung und Gesamtdurchlässigkeit des Strahlengangs. Wie bereits in Abschnitt 2.1 eingeführt, kann die effektive Sammelfläche als

$ A_"eff" = A_"geo" · tau_"opt" $

geschrieben werden, wobei τ_opt alle Reflexions- und Absorptionsverluste des optischen Pfads umfasst. @howell_ccd_2006 Eine höhere Transmission τ_opt führt bei konstanter Öffnung direkt zu einer größeren Zahl detektierter Photonen pro Zeiteinheit und damit entweder zu kürzeren notwendigen Belichtungszeiten oder zu einem verbesserten Signal-Rausch-Verhältnis. @howell_ccd_2006 @bolte_sn_2004 Schlechte Vergütung, Verschmutzung oder starke Streulichtprobleme verringern hingegen den effektiven Signalfluss und limitieren so die praktisch erzielbare Bildqualität, obwohl die geometrische Öffnung unverändert bleibt. @howell_ccd_2006

Selbst bei einem idealen, verlustfreien System ist die Auflösung eines Teleskops nicht beliebig steigerbar, sondern durch die Wellencharakteristik des Lichts begrenzt. Diese fundamentale Grenze wird durch die Fraunhofer-Beugung an der Teleskopapertur beschrieben. Für eine kreisförmige Öffnung ergibt sich als Bild einer ideal punktförmigen Lichtquelle das sogenannte Airy-Muster: ein heller zentraler Fleck, die Airy-Scheibe, umgeben von konzentrischen Beugungsringen. @airy_disk_wiki_2004 @telescope_psf_2009 Der Winkelradius des ersten Minimums der Airy-Scheibe – also der Abstand zwischen Zentrum und erstem Intensitätsnull – lässt sich näherungsweise durch

$ theta_"Airy" approx 1,22 · (lambda/"D") $

angeben, wobei λ die Wellenlänge des Lichts und D der Aperturdurchmesser des Teleskops ist. @airy_disk_wiki_2004 Umrechnung in Bogensekunden erfolgt mit dem Faktor 206265 arcsec pro Radiant. Diese Größe liefert die theoretische Beugungsgrenze: Sie gibt an, wie fein Winkeldetails im Idealfall aufgelöst werden können, wenn die Optik perfekt und frei von weiteren Störeinflüssen ist. @airy_disk_wiki_2004 @telescope_psf_2009

Das Rayleigh-Kriterium nutzt die Airy-Scheibe, um eine praktische Grenze für die Auflösung zweier punktförmiger Lichtquellen zu definieren. Es besagt, dass zwei gleich helle Sterne als gerade noch getrennt gelten, wenn das Hauptmaximum der einen Airy-Scheibe im ersten Minimum der anderen liegt. @airy_disk_wiki_2004 Der zugehörige Winkelabstand θ_R ist identisch mit der oben genannten Beugungsgröße:

$ theta_R = 1,22 · (lambda/"D") $

und wird in der Astronomie oft als theoretische Winkelauflösung eines beugungsbegrenzten Teleskops angegeben. @airy_disk_wiki_2004 @telescope_psf_2009 Die Formel zeigt direkt die Abhängigkeit von Apertur und Wellenlänge: Eine größere Öffnung oder eine kürzere Wellenlänge führt zu einer kleineren beugungsbedingten PSF und damit zu einer höheren theoretischen Auflösung. @airy_disk_wiki_2004

Das Dawes-Kriterium stellt ein empirisches, aus visuellen Beobachtungen abgeleitetes Näherungskriterium für die Auflösung von Doppelsternen dar. Es gibt die minimale trennbare Winkelauflösung in Bogensekunden als

$ theta_D approx (116 / D_"mm") $

an, wobei $D_"mm"$ der Teleskopdurchmesser in Millimetern ist. @dawes_wiki_2024 Für typische Beobachtungsbedingungen im sichtbaren Spektralbereich liefert diese Beziehung praxisnahe Werte, die etwas unterhalb der Rayleigh-Grenze liegen, aber denselben funktionalen Zusammenhang – bessere Auflösung bei größerer Apertur – widerspiegeln. @dawes_wiki_2024 @galyam_obs_2012

Zur Illustration der beugungsbedingten Auflösungsgrenzen eignet sich eine Abbildung des Airy-Musters, bei der links das zweidimensionale Intensitätsbild einer Airy-Scheibe mit ihren konzentrischen Ringen und rechts das zugehörige radiale Intensitätsprofil dargestellt ist. Solche Darstellungen finden sich in Optik-Lehrmaterialien zur Beugung und in Online-Ressourcen zu Airy-Scheibe und Rayleigh-Kriterium. @airy_disk_wiki_2004 @edmund_airy_2022


== Abbildung, Sampling und digitale Erfassung

== Signal-Rausch-Verhältnis und Belichtungszeit

== Begrenzende Faktoren der Bildqualität

== Lösungsansätze in der Astrofotografie

== Stacking-Verfahren

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