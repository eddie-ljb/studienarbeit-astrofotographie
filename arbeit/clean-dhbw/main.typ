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

Für die Astrofotografie ist insbesondere die Teilchen-Sicht relevant, da elektronische Detektoren wie CCDs und CMOS-Sensoren letztlich einzelne Photonen registrieren und in elektrische Ladung umwandeln. @smiljanic_em_2019 @romanishin_ccd_2002 @bolte_sn_2004 Die Stärke des Bildsignals und das unvermeidliche Photonrauschen hängen direkt von der Anzahl der detektierten Photonen ab und lassen sich nur im Photonenbild adäquat beschreiben. @romanishin_ccd_2002 @bolte_sn_2004

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

$ N_"pix" approx Φ_{p,"SB"} · A_"eff" · Omega_"pix" · t_"exp" $

wobei $Φ_{p,"SB"}$ die Photonflussdichte pro Steradiant ist. @romanishin_ccd_2002 @bolte_sn_2004 Dieser Ausdruck verknüpft die physikalische Oberflächenhelligkeit des Objekts mit der registrierten Photonenzahl im Pixel und bildet eine wichtige Grundlage für die Diskussion von Sampling und Signal-Rausch-Verhältnis.

Der Detektor wandelt eingehende Photonen mit der wellenlängenabhängigen Quanteneffizienz QE(λ) in Elektronen um. @howell_ccd_2006 @aavso_ccd_2013 Die mittlere Zahl der erzeugten Signal-Elektronen pro Pixel ist damit

$ N_e = N_"pix" · Q"E"(lambda) $

wobei N_e die Anzahl der registrierten Elektronen und QE(λ) eine dimensionslose Effizienz zwischen 0 und 1 ist. @howell_ccd_2006 @aavso_ccd_2013 Die Quanteneffizienz koppelt die astrophysikalische Photonenstatistik an das elektrische Signal und bestimmt, wie effizient Photonen unterschiedlicher Wellenlängen in messbare Signale umgesetzt werden. @howell_ccd_2006 @aavso_ccd_2013

== Atmosphäre und Transmission

Die Erdatmosphäre beeinflusst den Weg der Photonen vom astronomischen Objekt bis zum Detektor und begrenzt damit sowohl die effektive Signalstärke als auch die erreichbare Auflösung in der Astrofotografie. Sie schwächt das Signal durch Extinktion und verändert die Bilder durch turbulente Brechungsindexfluktuationen. @massey_atmos_2000 @spiff_atmos_rit_2005

Die durch die Atmosphäre laufende Strahlung wird abgeschwächt, weil Photonen absorbiert oder aus der Sichtlinie gestreut werden. @massey_atmos_2000 @airmass_wiki_2004 In der optischen Astronomie wird diese Abschwächung als atmosphärische Extinktion bezeichnet und hängt vor allem von der Luftmasse und von der Wellenlänge ab. @massey_atmos_2000


Die wichtigsten Beiträge zur Extinktion sind: @airmass_wiki_2004

- Rayleigh-Streuung an Luftmolekülen  
  Rayleigh-Streuung tritt an Teilchen auf, die deutlich kleiner als die Wellenlänge sind, und führt zu einer starken Wellenlängenabhängigkeit der Extinktion ∝ 1/λ⁴. @massey_atmos_2000 @airmass_wiki_2004 Kurzwelliges (blaues, UV) Licht wird daher deutlich stärker gestreut als langwelliges (rotes) Licht, was u. a. zum Blau des Tageshimmels führt.

- Mie-Streuung an Aerosolen  
  Mie-Streuung wird durch größere Partikel wie Staub, Tröpfchen und Aerosole verursacht und weist eine schwächere Wellenlängenabhängigkeit auf. @aerosol_bremen_2010 Sie trägt insbesondere im roten Spektralbereich und bei niedrigen Beobachtungshöhen zur Extinktion bei. @airmass_wiki_2004

- Molekulare Absorption  
  Moleküle wie Ozon (O₃), Wasserdampf (H₂O) und Sauerstoff (O₂) absor­bieren Photonen in bestimmten Spektralbändern. @airmass_wiki_2004 Dies führt zu charakteristischen Absorptionsbändern (z. B. Ozon im UV, Wasserbänder im nahen IR), in denen die Transmission stark reduziert ist. @esa_em_2002

Für die Astrofotografie bedeutet dies, dass die transmittierte Strahlung in einem Filterband durch alle drei Mechanismen gleichzeitig reduziert wird. Der Extinktionskoeffizient k(λ) fasst diese Effekte häufig effektiv pro Wellenlängenbereich zusammen (Einheit meist mag/Luftmasse). @massey_atmos_2000

Die Luftmasse X beschreibt, um welchen Faktor der Strahlungsweg durch die Atmosphäre gegenüber dem Zenit vergrößert ist. @airmass_wiki_2004 Bei einem einfachen planparallelen Atmosphärenmodell erhält man für den Zenitwinkel z die Näherung

$X approx sec(z) = 1 / cos(z)$

mit z als Winkel zwischen Beobachtungsrichtung und Zenit. @massey_atmos_2000 Für moderat große Zenitwinkel (typisch z ≲ 60°) liefert diese Beziehung hinreichend genaue Werte für photometrische Korrekturen. @massey_atmos_2000

Bei größeren Zenitwinkeln (d. h. nahe am Horizont) ist die planparallele Näherung nicht mehr ausreichend, und es werden empirisch verbesserte Formeln verwendet, beispielsweise

$X approx sec(z) · [1 - 0{,}0012 · (sec^2(z) - 1)]$

die die Erdkrümmung und die vertikale Struktur der Atmosphäre besser berücksichtigen. @massey_atmos_2000

Die beobachtete Helligkeit F eines Objekts in einem Filterband wird durch die Extinktion gemäß

$F_"obs" = F_0 · 10^{-0{,}4 · k(lambda) · X}$

abgeschwächt, wobei F₀ der extraterristrische Fluss (oberhalb der Atmosphäre), k(λ) der Extinktionskoeffizient in mag pro Luftmasse und X die Luftmasse ist. @massey_atmos_2000

- F_obs: beobachteter Fluss am Teleskop  
- F₀: Fluss ohne atmosphärische Dämpfung  
- k(λ): Extinktionskoeffizient [mag/Luftmasse]  
- X: Luftmasse (dimensionslos)

Die Formel folgt aus der Definition, dass eine Extinktion k·X in Magnituden einer logarithmischen Abschwächung des Flusses entspricht, und aus der Beziehung zwischen Magnitudendifferenz und Flussverhältnis. @massey_atmos_2000  

Typische Extinktionswerte in mittleren Breiten liegen beispielsweise bei etwa 0,4 mag/Luftmasse im B-Band (blau), 0,2 mag/Luftmasse im V-Band und 0,1 mag/Luftmasse im R-Band, während im nahen IR die Extinktion weiter abnimmt. @unittoolbox_airmass_2001 Dies verdeutlicht, dass kurze Wellenlängen deutlich stärker von der Atmosphäre gedämpft werden als lange. @massey_atmos_2000

Da der Photonfluss direkt proportional zum Fluss F ist, reduziert die atmosphärische Extinktion die am Teleskop verfügbare Photonenzahl um denselben Faktor wie die Strahlungsleistung. @massey_atmos_2000 @romanishin_ccd_2002 Für die effektive Photonflussdichte $Φ_(p,"obs")$ gilt damit analog

$Φ_{p,"obs"} = Φ_{p,0} · 10^{-0{,}4 · k(lambda) · X}$

wobei $Φ_(p,0)$ die Photonflussdichte ohne atmosphärische Abschwächung ist. Die Folge ist, dass bei hoher Luftmasse und in kurzwelligen Filtern deutlich weniger Photonen den Detektor erreichen und damit für ein gegebenes Signal-Rausch-Verhältnis längere Belichtungszeiten erforderlich werden. @massey_atmos_2000 @bolte_sn_2004 Dies verknüpft die Wahl der Beobachtungszeit (Objekt möglichst in der Nähe des Meridians) direkt mit der physikalischen Photonstatistik.

Neben der Extinktion verändert die Atmosphäre die räumliche Struktur des Lichts durch turbulente Fluktuationen des Brechungsindex. @spiff_atmos_rit_2005 @seeing_wiki_2003 Diese Turbulenz führt dazu, dass die Wellenfronten verformt werden und ein punktförmiger Stern nicht als Beugungsscheibchen der Optik, sondern als verwaschene Seeing-Scheibe erscheint. @seeing_wiki_2003


Die Atmosphäre weist auf verschiedenen Höhen und Skalen Temperatur- und Dichteschwankungen auf, die den Brechungsindex lokal verändern. @seeing_wiki_2003 Luftzellen mit leicht unterschiedlichem Brechungsindex bewegen sich durch das Teleskopfeld und verzerren die ankommende Wellenfront. @spiff_atmos_rit_2005

Integriert man diese Schwankungen entlang der Sichtlinie, erhält man ein stochastisches Wellenfrontfehlerfeld, das sich zeitlich ändert. @seeing_wiki_2003 Je nach Stärke der Turbulenz werden unterschiedliche räumliche Skalen dominieren, was durch das sogenannte C_N²-Profil (Strukturkonstante des Brechungsindex) beschrieben wird. @seeing_wiki_2003  

Für praktische Anwendungen fasst man die Wirkung der Turbulenz im Fried-Parameter r₀ zusammen.

Der Fried-Parameter r₀ (Fried’s coherence length) ist ein Maß für die Qualität der atmosphärischen Übertragung. @fried_param_wiki_2011 Er ist definiert als der Durchmesser einer Kreisöffnung, für die der durch die Atmosphäre verursachte rms-Wellenfrontfehler etwa 1 radian (≈ λ/6) beträgt. @seeing_tutorial_2024

- r₀: Fried-Parameter [m]  
  Durchmesser eines Bereiches der Eintrittspupille, über den die Wellenfront als „weitgehend kohärent“ angesehen werden kann.

Ist der Teleskopdurchmesser D deutlich kleiner als r₀, kann das System näherungsweise beugungsbegrenzt arbeiten; ist D deutlich größer als r₀, dominiert das Seeing, und die Auflösung wird nicht mehr durch die Optik, sondern durch die Atmosphäre begrenzt. @seeing_tutorial_2024 @littlefair_ao_lecture_2018

Typische Werte an guten Standorten liegen bei r₀ ≈ 10 cm bei λ = 500 nm, was einem Seeing von etwa 1″ entspricht. @littlefair_ao_lecture_2018 Der Fried-Parameter skaliert mit der Wellenlänge ungefähr wie

$r_0 ~ lambda^{6/5}$

sodass im nahen Infrarot deutlich größere r₀-Werte und damit kleinere Seeing-Scheiben möglich sind als im sichtbaren Bereich. @littlefair_ao_lecture_2018 @fried_param_wiki_2011

Die Turbulenzzellen wandern mit den Winden über das Teleskop hinweg, sodass sich das Muster der Wellenfrontverzerrungen auf Zeitskalen von Millisekunden bis Sekunden ändert. @seeing_wiki_2003 Die charakteristische Zeit, über die die atmosphärischen Bedingungen im Mittel stabil bleiben, wird durch den atmosphärischen Zeitkonstanten t₀ beschrieben. @seeing_wiki_2003

- t₀: atmosphärische Kohärenzzeit [s]  
  Zeit, nach der sich das Turbulenzmuster signifikant verändert.

Für langbelichtete Bilder über viele t₀ hinweg ergibt sich ein gemitteltes Seeing-Bild, während kurzbelichtete Aufnahmen („Lucky Imaging“) Momente mit besonders geringem Wellenfrontfehler nutzen können. @seeing_wiki_2003 Dies erklärt, warum sehr kurze Einzelbelichtungen zu deutlich schärferen Einzelbildern führen können, obwohl die mittlere Seeing-Bedingung unverändert ist. @spiff_atmos_rit_2005

Der Einfluss der Atmosphäre auf die Abbildung eines punktförmigen Sterns lässt sich durch den FWHM-Durchmesser der Seeing-Scheibe in Bogensekunden charakterisieren. @seeing_wiki_2003 In der theoretischen Beschreibung der Kolmogorov-Turbulenz ergibt sich ein Zusammenhang zwischen Fried-Parameter r₀ und der FWHM des Seeing-Scheibchens (für langbelichtete Bilder) von näherungsweise

$"FWHM"_"seeing" approx 0{,}98 · lambda / r_0$

wobei λ die Beobachtungswellenlänge und r₀ der Fried-Parameter ist (beide in gleichen Längeneinheiten). @caltech_coronograph_2004  

Um den Wert in Bogensekunden auszudrücken, wird der Ausdruck mit dem Umrechnungsfaktor 206265 (Bogensekunden pro Radiant) multipliziert:

$"FWHM"_"seeing"("arcsec") approx 0{,}98 · (lambda / r_0) · 206265$

- λ: Wellenlänge [m]  
- r₀: Fried-Parameter [m]  
- FWHM_seeing: charakteristischer Seeing-Durchmesser [arcsec]

Die Formel zeigt, dass ein größerer Fried-Parameter (bessere atmosphärische Bedingungen) zu einem kleineren Seeing-Durchmesser führt und dass Seeing bei längeren Wellenlängen etwas günstiger ist. @littlefair_ao_lecture_2018

In der Praxis ergibt sich die beobachtete Punktspreizfunktion (PSF) eines Sterns aus der Faltung der optischen PSF des Teleskops mit der atmosphärischen PSF. @cfht_psf_1998

$h_"eff" = h_"optik" * h_"atm"$

- h_eff: effektive PSF des Gesamtsystems  
- h_optik: PSF der beugungsbegrenzten Optik  
- h_atm: PSF der Atmosphäre (Seeing)

Die Faltung beschreibt mathematisch, dass das Bild eines Punktes durch jeden Teil des Systems „verschmiert“ wird. @cfht_psf_1998 Ist die atmosphärische PSF deutlich breiter als die optische Beugungsscheibe, dominiert h_atm, und das System ist seeing-begrenzt; ist hingegen die Optik der limitierende Faktor (z. B. bei Raumteleskopen oder mit leistungsfähiger Adaptiver Optik), bestimmt h_optik die effektive Auflösung. @cfht_psf_1998 @littlefair_ao_lecture_2018

Die Betrachtung von Extinktion und Seeing vervollständigt den Weg der Photonen vom astronomischen Objekt über die Atmosphäre bis in das Teleskop. Die Luftmasse und die wellenlängenabhängige Extinktion bestimmen, wie viele Photonen überhaupt den Detektor erreichen und damit die erreichbare Signalstärke und das Signal-Rausch-Verhältnis. @massey_atmos_2000 @bolte_sn_2004  

Gleichzeitig setzen turbulente Brechungsindexfluktuationen, beschrieben durch den Fried-Parameter r₀ und den Seeing-Scheibendurchmesser, eine reale Auflösungsgrenze, die häufig deutlich über der theoretischen Beugungsgrenze der Optik liegt. @seeing_wiki_2003 @fried_param_wiki_2011 Selbst ein perfektes, beugungsbegrenztes Teleskop kann diese Grenze ohne adaptive Optik nicht unterschreiten. Damit liefert die Atmosphäre eine zentrale physikalische Begründung dafür, warum die in der Optik ideal erreichbare Auflösung in der bodengebundenen Astrofotografie meist nicht ausgeschöpft werden kann. @littlefair_ao_lecture_2018
text

== Optische Systeme der Astrofotografie

== Abbildung, Sampling und digitale Erfassung

== Signal-Rausch-Verhältnis und Belichtungszeit

== Begrenzende Faktoren der Bildqualität

== Lösungsansätze in der Astrofotografie

== Stacking-Verfahren

= Methodik

== Forschungsdesign

== Versuchsplanung

- Auswahl der Untersuchungparameter

- Versuchsobjekte / Himmelskörper

== Datenerhebung

- Equipment

- Aufnahmebedingungen

- Kalibrierungsdaten

== Datenverarbeitung

- Stacking-Prozess

- Nachbearbeitung

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