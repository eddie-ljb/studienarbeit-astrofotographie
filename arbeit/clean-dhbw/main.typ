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

== Physikalische Grundlagen

Die Astrofotografie misst elektromagnetische Strahlung weit entfernter Objekte mithilfe optischer Systeme und elektronischer Sensoren. Die erreichbare Bildqualität ist dabei nicht ausschließlich eine Frage technischer Präzision oder algorithmischer Nachbearbeitung, sondern unterliegt fundamentalen physikalischen Grenzen. Diese ergeben sich aus der Wellennatur des Lichts, der endlichen Apertur optischer Systeme sowie aus atmosphärischen Einflüssen. Im Folgenden werden diese Grenzen systematisch hergeleitet und erläutert.

Ein optisches System ist eine Anordnung aus Spiegeln oder Linsen, die Licht sammelt und in einer Bildebene fokussiert. Ein zentraler Parameter ist die Apertur $D$, also der effektive Durchmesser der lichtsammelnden Öffnung. Die zugehörige Lichtsammelfläche $A$ entspricht dem Flächeninhalt eines Kreises #cite(<schroeder2000astronomical>):

$ A = pi * (D/2)^2 $

Die Anzahl der detektierten Photonen ist proportional zur einfallenden Strahlungsleistung und damit proportional zur Lichtsammelfläche. Folglich wächst die gemessene Photonenzahl mit $D^2$. Eine Verdopplung der Apertur führt somit zu einer Vervierfachung der gesammelten Photonenmenge bei gleicher Belichtungszeit #cite(<schroeder2000astronomical>).

Neben der Apertur ist die Brennweite $f$ eine weitere Kenngröße. Sie beschreibt den Abstand, in dem parallel einfallende Strahlen fokussiert werden. Zusammen mit der Pixelgröße bestimmt sie den Bildmaßstab, also wie viele Bogensekunden einem Pixel entsprechen #cite(<born1999principles>) #cite(<karttunen2017fundamental>). Während die Brennweite die geometrische Abbildungsgröße beeinflusst, bestimmt die Apertur sowohl die Lichtmenge als auch die theoretische Auflösung.

=== Beugung und Auflösungsgrenze

Die geometrische Optik beschreibt Licht als geradlinig propagierende Strahlen. Für die tatsächliche Detailauflösung eines Teleskops reicht dieses Modell jedoch nicht aus. Licht besitzt eine endliche Wellenlänge $lambda$ und verhält sich daher wie eine elektromagnetische Welle. Wird eine solche Welle durch eine endliche Öffnung – also die Apertur eines Teleskops – begrenzt, entsteht Beugung.

Beugung führt dazu, dass eine punktförmige Lichtquelle im Bild nicht als idealer Punkt erscheint, sondern als ausgedehnte Intensitätsverteilung. Diese Intensitätsverteilung wird als Point Spread Function (PSF) bezeichnet. Sie beschreibt die Antwort des optischen Systems auf eine ideale Punktquelle #cite(<goodman2005fourier>).

Mathematisch ergibt sich im Fernfeld, dass die komplexe Feldverteilung in der Bildebene proportional zur Fourier-Transformation der Aperturfunktion ist. Für eine kreisförmige Apertur entsteht daraus ein charakteristisches Intensitätsmuster, das sogenannte Airy-Muster #cite(<born1999principles>). Dieses besteht aus einem zentralen Maximum (Airy-Scheibe) sowie konzentrischen Nebenringen mit abnehmender Intensität.

Die Breite des zentralen Maximums definiert die theoretische Auflösungsgrenze eines beugungsbegrenzten Systems. Nach dem Rayleigh-Kriterium beträgt der minimale auflösbare Winkelabstand zweier Punktquellen:

$ theta = 1.22 * lambda / D $

#cite(<rayleigh1879optics>) #cite(<born1999principles>)

Dabei ist $theta$ der minimale Winkelabstand, $lambda$ die Wellenlänge und $D$ der Aperturdurchmesser. Die Konstante 1.22 ergibt sich aus der ersten Nullstelle der zugrunde liegenden Bessel-Funktion, welche das Beugungsprofil einer Kreisöffnung beschreibt #cite(<born1999principles>).

Diese Beziehung zeigt, dass eine größere Apertur die Winkelauflösung verbessert, da $theta$ mit wachsendem $D$ kleiner wird. Die Beugungsgrenze ist somit eine direkte Konsequenz der Wellennatur des Lichts.

Aus systemtheoretischer Sicht lässt sich das Teleskop als lineares, ortsinvariantes System modellieren. Das Bild entsteht als Faltung des idealen Objekts mit der PSF #cite(<goodman2005fourier>). Im Frequenzraum entspricht dies einer Multiplikation mit der Optical Transfer Function (OTF). Diese besitzt eine endliche Grenzfrequenz. Räumliche Frequenzen oberhalb dieser Grenze werden nicht übertragen. Feine Detailinformationen, die diese Grenzfrequenz überschreiten, sind physikalisch nicht im Bild enthalten und können daher nicht durch nachgelagerte Bildverarbeitung rekonstruiert werden.

=== Atmosphärische Einflüsse

Neben der beugungsbedingten Grenze stellt die Erdatmosphäre den dominierenden limitierenden Faktor der bodengebundenen Astrofotografie dar. Selbst wenn ein Teleskop theoretisch beugungsbegrenzt arbeitet, wird die erreichbare Detailauflösung häufig durch atmosphärische Turbulenzen bestimmt.

Die Atmosphäre weist räumlich und zeitlich schwankende Brechungsindizes auf. Temperatur- und Dichteunterschiede führen zu zufälligen Phasenverschiebungen der einfallenden Wellenfront. Diese Verzerrungen werden als Seeing bezeichnet #cite(<roddier1999adaptive>).

Zur Quantifizierung dieser Effekte wird der Fried-Parameter $r_0$ eingeführt #cite(<roddier1999adaptive>). Er beschreibt die Kohärenzlänge der Atmosphäre, also den maximalen Durchmesser einer Apertur, über den die Wellenfront noch näherungsweise eben ist. Ist die Apertur $D$ größer als $r_0$, so wird die Abbildung nicht mehr primär durch Beugung, sondern durch atmosphärische Turbulenz bestimmt.

Die effektive Winkelauflösung eines atmosphärisch begrenzten Systems lässt sich näherungsweise durch

$ theta_"seeing" approx lambda / r_0 $

beschreiben #cite(<roddier1999adaptive>).

Damit ergeben sich zwei konkurrierende Auflösungsgrenzen:

- Beugungsgrenze: $ theta_(diff) = 1.22 * lambda / D $
- Seeing-Grenze: $ theta_"seeing" approx lambda / r_0 $

Die tatsächlich erreichbare Winkelauflösung wird durch den jeweils größeren dieser beiden Werte bestimmt. Praktisch gilt daher näherungsweise:

$ theta_"eff" approx max(1.22 * lambda / D, lambda / r_0) $

Ist $D < r_0$, dominiert die Beugung.  
Ist $D > r_0$, dominiert die Atmosphäre.

Typische Seeing-Werte in Mitteleuropa liegen zwischen etwa 1″ und 3″ #cite(<tokovinin2002seeing>). Damit ist in vielen Fällen nicht die Optik, sondern die Atmosphäre der begrenzende Faktor.

Neben der Turbulenz wirken weitere atmosphärische Effekte wie Extinktion, Streuung und Lichtverschmutzung auf das Signal-Rausch-Verhältnis #cite(<karttunen2017fundamental>). Diese reduzieren den Kontrast schwacher Objekte, beeinflussen jedoch nicht unmittelbar die geometrische Beugungsgrenze.

== Sensorik und digitale Bildentstehung

- CCD- und CMOS-Sensoren

- Dynamikumfang und Bittiefe

- Sampling und Nyquist-Kriterium

== Mathematische Grundlagen

- Signal-Rausch-Verhältnis

- Stacking Algorithmen

- Subpixel-Alignment und Drizzle

- Lucky Imaging

== Auflösung im Stacking-Kontext

- Theoretische und Effektive Auflösung

- Einfluss von Rauschen auf Detailerkennbarkeit

- Grenzen der Auflösungssteigerung

== Stand der Technik

- Moderne Stacking-Software

- Aktuelle Verfahren zur Qualitätssteigerung

- Vergleich von Amateure und professioneller Astrofotografie

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