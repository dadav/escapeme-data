local templates = import '../../templates.libsonnet';
local utils = import '../../utils.libsonnet';

templates.Room {
  meta: templates.RoomMeta {
    title: 'K-19',
    description: 'Erlebe ein Abenteuer in dem sich alles um ein mysteriöses U-Boot dreht!',
    image: 'uboot.jpg',
    soundfile: 'uboat.mp3',
    duration: '1h45m',
    difficulty: 'normal',
  },
  customizations: [
    templates.Customization {
      description: 'Person1 (männlich)',
      variable: 'person1',
      default: 'Wassili',
    },
    templates.Customization {
      description: 'Person2 (männlich)',
      variable: 'person2',
      default: 'Dimitri',
    },
    templates.Customization {
      description: 'Person3 (weiblich)',
      variable: 'person3',
      default: 'Olga',
    },
    templates.Customization {
      description: 'Person4 (männlich)',
      variable: 'person4',
      default: 'Iwan',
    },
    templates.Customization {
      description: 'Person5 (männlich)',
      variable: 'person5',
      default: 'Andrej',
    },
    templates.Customization {
      description: 'Person6 (männlich)',
      variable: 'person6',
      default: 'Fedor',
    },
    templates.Customization {
      description: 'Person7 (männlich)',
      variable: 'person7',
      default: 'Miroslav',
    },
    templates.Customization {
      description: 'Ein Land',
      variable: 'land1',
      default: 'Deutschland',
    },
  ],
  text: |||
    Wir schreiben den 22. Oktober 1962. John F. Kennedy hat gerade im Fernsehen verkündet,<br>
    dass die Sowjetunion auf Kuba Atomraketen stationiert habe.<br>
    Die Welt hält den Atem an, denn der dritte Weltkrieg scheint kurz bevorzustehen.<br>
    <br>
    Zum gleichen Zeitpunkt befindet sich ein junger Mann namens {person1} auf dem U-Boot K-19.<br>
    Die Crew der K-19 und {person1} befinden sich in höchster Alarmbereitschaft, denn der letzte Befehl lautete:<br>
    <br>
    "<b>Sämtliche Kommunikation wird eingestellt. Handeln nach eigenem Ermessen.</b>"</br>
    <br>
    Das Schicksal der Welt liegt nun in den Händen dieser Crew. Jede Fehleinschätzung der Situation
    wäre eine Katastrophe, denn die K-19 ist ein <b>Atom-U-Boot</b> und hat drei Atomraketen mit einer Reichweite
    von 650km und einer Sprengkraft von je 1,4 Megatonnen an Bord.</br>
    </br>
    Und so beginnt die Geschichte der K-19 und {person1}, der schon bald vor einer schwierigen Entscheidung stehen wird.
  |||,
  levels: [
    templates.Level {
      meta: templates.LevelMeta {
        title: 'Albtraum',
        description: 'Der Albtraum beginnt...',
        image: 'handschellen.jpg',
        type: 'start',
      },
      text: |||
        {person1} war ein ganz normaler Mann. Verheiratet, zwei Kinder und mit 32 Jahren im
        besten Alter. Er hatte sich gerade mit seiner Frau ein Haus gekauft und plante sich von seinem operativen
        Einsatz zu einem Bürojob versetzen zu lassen.<br>
        <br>
        Seine besten Freunde {person2} und {person3}, die ebenfalls mit ihm an Bord waren, freuten sich zwar für
        {person1}s gefundenes Glück, waren aber auch traurig darüber, dass er die Crew verlassen würde. Sie gingen
        schließlich durch dick und dünn, erlebten unzählige Abenteuer miteinander und konnten einander alles erzählen.<br>
        <br>
        {person2} war der IT-Spezialist der K-19 und genauso alt wie {person1}.<br>
        Er predigte immer wie wichtig ein gutes Passwort sein würde und wie
        viele einfach Jahr für Jahr ihr Lieblingstier als Passwort benutzten würden.<br>
        {person3} hingegen war für die Kommunikation an Bord verantwortlich.<br>
        Sie lernten sich vor drei Jahren bei einem Außeneinsatz in der russischen Botschaft in {land1} kennen und
        waren seither unzertrennlich.<br>
        <br>
        <b>...</b><br>
        <br>
        Mit schmerzendem Kopf und gefesselten Händen erlangte {person1} das Bewusstsein...<br>
        <br>
        Was zum Teufel war geschehen?<br>
        Das letzte, an das er sich erinnern konnte, war die Wachablösung bei den Atom-Sprengköpfen gestern Nacht.<br>
        <br>
        "Bin ich tot? Ist das der Himmel?...", dachte {person1}. Nein, seine Schmerzen bewiesen ihm das Gegenteil.<br>
        Doch etwas schlimmes musste passiert sein!<br>
        <br>
        {person1} fing an nach Hilfe zu rufen, doch niemand schien ihn zu hören.<br>
        Und selbst wenn, wem sollte er noch vertrauen? Jemand in diesem U-Boot war hierfür verwantwortlich.<br>
        <br>
        <b>Er musste die Sache also selbst in die Hand nehmen.</b><br>
        <br>
        Er tastete, so gut er konnte, mit seinen Fingern die Fesseln ab und entdeckte ein Zahlenschloss. {person1} hatte
        ein gutes Fingerspitzengefühl und konnte die einzelnen Zahlen fühlen.<br>
        Es waren 5 Zahlen notwendig...{person1} musste schlucken, denn das hieß,
        dass es <b>100.000</b> mögliche Kombinationen gab...<br>
        <br>
        Er dachte nach und als er völlig in sich gekehrt war, hörte er plötzlich ganz leise folgendes:<br>
        <br>
        <audio controls>
          <source src="../../../morse.mp3" type="audio/mpeg">
          Der Browser unterstützt das Format nicht.
          Lade die Datei herunter und höre sie dir an.
          <a href="../../../morse.mp3">Audio</a>
        </audio>
        <br>
        Für einen Seemann wie {person1} war dies natürlich eine leichte Übung,
        weshalb er sich im Nu befreien konnte!
      |||,
      question: templates.TextQuestion {
        text: 'Wie lautet der Code für die Handschellen?',
        value: '83620',
        ignorecase: false,
        levenshtein: 1,
      },
      hints: [
        'Suche im Internet nach "Morsecode"!',
      ],
      success: |||
        Endlich, {person1} konnte sich befreien und war nun bereit den Raum zu erkunden!!
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Gefangen',
        description: $.levels[0].success,
        image: 'kammer.jpg',
        depends: utils.indexes_by(function(l) l.meta.title, ['Albtraum'], $.levels),
        cssfile: 'level2.css',
        jsfile: 'level2.js',
      },
      text: |||
        {person1}s Blick wanderte durch den Raum in dem er gefangen war. Es war ziemlich dunkel, weshalb er nur Umrisse
        erkennen konnte. Er konnte nach kurzer Zeit eine Taschenlampe finden und erkundete damit den Raum!<br>
        <br>
        "Dieser Raum muss eine Lampe besitzen, aber wo ist der Schalter", dachte er sich.<br>
        <br>

        <div id="dark-room-container" class="img-fluid" onmousemove="moveTorch(event)">
          <div id="torch" class="img-fluid">
            <button id="light" onClick="turnOnLight()" class="button red">Licht</button>
          </div>
        </div>

        <div id="room-container" style="display: none;">
          <img class="img-fluid" src="../../../raum.jpg">
          <a id="note-open-button" onClick="openNote()"></a>
        </div>
        <br>

        <div id="light-on-text" style="display: none;">
        <br>
        {person1} war sichtlich erleichtert, als er den Lichtschalter betätigte. Endlich wieder Licht!<br>
        Die Luke war jedoch verschlossen und mit einem Passwort gesichert worden (das war bei Atom-U-Booten üblich).<br>
        Er hatte keine Ahnung wie das Passwort lauten konnte und durchsuchte daher den Raum nach einem Hinweis...
        </div>
        <br>
        <div id="note" style="display: none;">
          <img class="img-fluid" src="../../../notiz.jpg">
          <br>
          <br>
          Doch was war das? Neben der Luke hing ein kleiner Zettel. Könnte das etwa...?<br>
          <br>
          Es war <b>ein Rätsel</b> und sollte den Verrätern wohl als Gedankenstüzte dienen, falls sie sich aus Versehen einsperrten.<br>
        </div>
      |||,
      question: templates.TextQuestion {
        text: 'Wie lautet das Passwort?',
        value: 'nichts',
      },
      hints: [
        'Glaubst du man kann sich jedes Passwort auf dem U-Boot merken?',
        'Doch was war das? Neben der Luke hing ein kleiner Zettel.',
      ],
      success: |||
        Unglaublich, dass man für dieses Passwort eine Notiz benötigt, oder?<br>
        <br>
        {person1} war nun endlich wieder auf freiem Fuß!!<br>
        <br>
        Doch wohin sollte er gehen?<br>
        <br>
        Er hatte die Idee {person3} im Funkraum aufzusuchen, weil {person3} ihm höchstwahrscheinlich den
        Code für seine Fesseln gefunkt hatte. Oder sollte er etwa zu {person2} gehen, weil der Technikraum
        leichter zu erreichen war...
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Funkraum',
        description: '{person1} versucht zum Funkraum zu gelangen.',
        image: 'funkraum.jpg',
        jsfile: 'level3.js',
        depends: utils.indexes_by(function(l) l.meta.title, ['Gefangen'], $.levels),
      },
      text: |||
        {person1} entschied sich nun zum Funkraum zu gehen. {person3} sollte es möglich sein
        in Erfahrung zu bringen was vorgefallen war. Das Problem war nur, dass der Funkraum
        auf der anderen Seite des U-Bootes war und {person1} in Gefahr laufen konnte jemandem
        zu begegnen der nichts gutes im Sinn hatte.<br>
        <br>
        Kaum war er durch die erste Luke gestiegen, hörte er zwei Stimmen. {person1} vermutete, dass es {person4}
        und {person5} sein mussten.<br>
        <br>
        Folgendes konnte er mithören:<br>
        <br>
        <b>{person4}:</b> ...aber wie können Zwillinge so unterschiedlich sein?<br>
        Der eine kann nicht lügen und der andere bringt kein wahres Wort über die Lippen.<br>
        <b>{person5}:</b> Da hast du recht. Da muss bei der Erziehung gewaltig was schief gelaufen sein.<br>
        Themenwechsel... ich bin immernoch ganz erstaunt, wie gut alles läuft.
        Bis auf die Sache mit {person1} gab es keine Probleme.<br>
        <b>{person4}:</b> Ja, ich hätte nie gedacht, dass {person1} da nicht mitspielt. Naja, selbst schuld...<br>
        <b>{person5}:</b> Nur gut, dass wir ihm die Abschusscodes der Rakenten abnehmen konnten.<br>
        <b>{person4}:</b> Stimmt, ohne die könnten wir den Plan nicht durchführen. Den dritten Teil des Codes habe ich mir
        schon eingeprägt. Das war auch ganz einfach, weil der Code das Querprodukt meiner Personalnummer ist,
        frag mich aber bitte nicht warum ich das weiß.<br>
        <b>{person5}:</b> Pssst, {person4}, du weißt, das solltest du niemandem sagen, auch mir nicht.<br>
        <b>{person4}:</b> Verdammt, du hast recht!!<br>
        <br>
        Daraufin verließen {person4} und {person5} den Raum und {person1} konnte ihn ohne Gefahr durchqueren.<br>
        Das Gespräch war sehr aufschlußreich für ihn, denn nun wusste er warum er noch am Leben war. Sie wussten nicht ob
        die Codes, die man ihm wohl entwendet hatte, korrekt waren oder nicht. Das Problem war allerdings, dass er es
        selbst nicht mehr wusste. Sein Erinnerung über die gestrige Nacht war immernoch in Nebel gehült.<br>
        <br>
        {person1} kannte den Weg wie seine Westentasche und war kurze Zeit später im Funkraum...<br>
        <br>
        <img onclick="printImage(this);" class="img-fluid" style="max-width: 700px;" src="../../../uboot_plan.png">
        <br>
        (Zum Drucken auf das Bild drücken)
      |||,
      question: templates.TextQuestion {
        text: 'Welche Route hat {person1} genommen?',
        value: '7245831',
        levenshtein: 2,
        ignorecase: false,
      },
      success: |||
        Als {person1} im Funkraum ankam traff er auf {person3}, die sichtlich überrascht war ihn zu sehen!<br>
        <br>
        In ihren Augen konnte er erkennen, dass sie sich wirklich freute ihn zu sehen. Das konnte nicht gespielt sein,
        dachte er sich.<br>
        <br>
        {person3} berichtete ihm, dass die K-19 von einem radikalen Teil der Crew übernommen wurde.<br>
        Diejenigen, die sich weigerten mitzumachen, wurden ermordet, bzw. in Räume gesperrt.<br>
        <br>
        Sie entschied sich mitzuspielen, weil sie so die Chance hatte die K-19 zurückzugewinnen.<br>
        <br>
        {person1} und {person3} grübelten gemeinsam darüber nach, was die nächsten Schritte sein könnten...
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Hilfe!!',
        description: '{person1} und {person3} versuchen Hilfe zu rufen.',
        image: 'telefon.jpg',
        depends: utils.indexes_by(function(l) l.meta.title, ['Funkraum'], $.levels),
      },
      text: |||
        {person1} und {person3} standen vor einem großen Problem. Ein Hilferuf nach außen würde man
        im Kontrollraum definitiv mitbekommen und dann wären sie geliefert gewesen. Es grenzte schon
        an ein Wunder, dass {person3}s Morsecode, den sie über einen Lautsprecher an {person1} übermittelte,
        nur von ihm gehört und verstanden wurde.<br>
        <br>
        {person3} hatte eine Idee! Sie hatten im Lager eine neuartige Boje gelagert, eine sogenannte SLOT-Boje.
        Mit dieser Boje war es möglich, kurze Nachrichten zu speichern, die nach dem Auftauchen durch
        Radiowellen automatisch übermittelt wurden, ohne dass das U-Boot diese selbst empfangen konnte.<br>
        Zumindest hoffte sie das. Die Technik war schließlich noch nicht getestet worden.<br>
        <br>
        <b>Das ist es! Das ist genau das richtige für uns!!</b>, sagte {person1} und schnappte sich einen Zettel.<br>
        <br>
        <b>Was wollen wir senden?</b>, fragte {person3} ihn.<br>
        <br>
        Das wusste {person1} selbst nicht so richtig. Aber die Zeit schritt voran und sie mussten handeln. Er schrieb
        eine kurze Nachricht auf den Zettel und gab ihn {person3}.<br>
        <br>
        <b>{person3}, nimm den Zettel, geh zur Boje und schieß sie an die Wasseroberfläche. Ich darf unter keinen Umständen
        erwischt werden, daher solltest du alleine gehen.<br>
        Wir treffen uns dann vor dem Kontrollraum</b>, sagte {person1}.<br>
        <br>
        {person3} hatte zwar Angst, verstand aber wie wichtig diese Nachricht sein könnte. Sie fasste all ihren Mut zusammen
        und ging in Richtung Tür, blieb aber kurz davor stehen. Sie schaute auf den Zettel und dachte:<br>
        <br>
        <b>"Was wenn doch..."</b><br>
        <br>
        Sie schnappte sich den Stift und schien irgendein Kauderwelsch auf den Zettel zu schreiben.<br>
        <br>
        <b>Falls man mich mit dem Zettel erwischen sollte...</b>, sagte sie und lächelte.<br>
        <br>
        <img class="img-fluid" src="../../../rotX.jpg">
        <br>
      |||,
      question: templates.TextQuestion {
        text: 'Was war die ursprüngliche Nachricht, bevor {person3} sie verschlüsselte?',
        value: 'K19 Verrat Hilfe',
        levenshtein: 2,
        ignorecase: true,
      },
      hints: [
        'X19? Kommt dir das nicht bekannt vor?',
        'Manchmal hilft es sich im Kreis zu drehen.',
      ],
      success: |||
        K-19! Verrat! Hilfe! Diese Nachricht sollte jeder verstehen und hoffentlich die richtigen Schlüsse ziehen.<br>
        <br>
        {person1} machte sich auf den Weg zum Kontrollraum.
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Technikraum',
        description: '{person1} schlägt sich zum Technikraum durch!',
        image: 'technik.jpg',
        depends: utils.indexes_by(function(l) l.meta.title, ['Gefangen'], $.levels),
      },
      text: |||
        {person1} entschied, dass der nächste logische Schritt war zum Technikraum zu gehen.<br>
        Mit der Hilfe von {person2} konnte es ihnen womöglich gelingen, die K-19 wieder unter Kontrolle zu
        bekommen. Als Technikexperte war keine Tür vor ihm sicher und logische Aufgaben zu lösen lag ihm im Blut.<br>
        Solch eine Unterstüzung konnte {person1} jetzt brauchen!<br>
        <br>
        Der Weg war zwar kürzer als zum Funkraum, allerdings lag dieser in der Nähe des Raketenlagers und wurde
        höchstwahrscheinlich gut bewacht. Er ging davon aus, dass das Ziel dieses Angriffs der
        Abschuss eines Nuklearsprengkörpers war und die Eskalation des kalten Krieges bedeuten könnte.<br>
        <br>
        Mit diesen Gedanken im Hinterkopf machte er sich auf den Weg. Er musterte jeden Raum sorgfältig bevor er ihn betrat,
        denn wenn er geschnappt worden wäre, wäre alles vorbei gewesen.<br>
        <br>
        In einem der Räume fiel ihm ein komischer Zettel auf dem Boden auf:<br>
        <img class="img-fluid" src="../../../erster_teil.png">
        <br>
        Es schien aber eine Zahl zu fehlen...<br>
        {person1} hatte das Gefühl, dass der Zettel noch wichtig werden könnte, weshalb er ihn einsteckte.<br>
        <br>
        Er durchquerte einen Raum nach dem anderen, bis er schließlich vor {person2}s Technikraum stand.<br>
        <br>
        Der Raum war natürlich wieder mit einem ihm unbekannten Passwort geschützt worden...
      |||,
      question: templates.TextQuestion {
        text: 'Wie lautet das Passwort?',
        value: 'monkey',
        ignorecase: true,
        levenshtein: 1,
      },
      hints: [
        'Hält sich {person2} an seine eigenen Passwort-Regeln?',
      ],
      success: |||
        Die Tür öffnete sich und {person1} schaute in das überraschte Gesicht von {person2}!<br>
        <br>
        "Wie hast du das Passwort....ach, vergiss es!", sagte {person2} und schaute beschähmt auf den Boden.<br>
        Nichtsdestotrotz war er froh darüber, dass {person1} sich befreien konnte und es bis zu ihm schaffte.<br>
        <br>
        {person2} hatte sich in dem Raum eingeschlossen, denn er wollte zwar helfen, konnte aber nicht genug Mut aufbringen um
        einen Rettungsversuch zu starten. Er war aber nicht untätig gewesen und zeigte {person1} eine Liste mit Informationen
        der Crew, die er zusammengestellt hatte:
        <br>
        <div class="table-responsive">
        <table class="table table-sm table-hover table-bordered">
          <thead>
            <tr>
              <th>Personalnummer</th>
              <th>Name</th>
              <th>Geburtsdatum</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>9483758767</td>
              <td>Pjotr</td>
              <td>20.04.1931</td>
            </tr>
            <tr>
              <td>9483758768</td>
              <td>Alexej</td>
              <td>23.08.1931</td>
            </tr>
            <tr>
              <td>9483758769</td>
              <td>{person6}</td>
              <td>28.03.1930</td>
            </tr>
            <tr>
              <td>9483758770</td>
              <td>Danilo</td>
              <td>16.10.1929</td>
            </tr>
            <tr>
              <td>9483758771</td>
              <td>Andrej</td>
              <td>01.02.1945</td>
            </tr>
            <tr>
              <td>9483758772</td>
              <td>{person1}</td>
              <td>04.03.1930</td>
            </tr>
            <tr>
              <td>9483758773</td>
              <td>{person2}</td>
              <td>12.02.1930</td>
            </tr>
            <tr>
              <td>9483758774</td>
              <td>{person3}</td>
              <td>12.02.1936</td>
            </tr>
            <tr>
              <td>9483758775</td>
              <td>{person4}</td>
              <td>20.05.1940</td>
            </tr>
            <tr>
              <td>9483758776</td>
              <td>{person5}</td>
              <td>04.02.1935</td>
            </tr>
            <tr>
              <td>9483758777</td>
              <td>{person7}</td>
              <td>28.03.1930</td>
            </tr>
            <tr>
              <td>9483758778</td>
              <td>Danilo</td>
              <td>12.05.1937</td>
            </tr>
            <tr>
              <td>9483758779</td>
              <td>Lew</td>
              <td>15.12.1925</td>
            </tr>
            <tr>
              <td>9483758780</td>
              <td>Nikolaj</td>
              <td>02.11.1935</td>
            </tr>
          </tbody>
        </table>
        </div>
        <br>
        Er hoffte, dass {person1} mit diesen informationen irgendwas anfangen könnte.<br>
        <br>
        {person1} überflog die Liste, doch sein Blick stoppte abrupt.<br>
        <br>
        Er dachte einen kurzen Moment nach, als ob er sich an etwas erinnern wollte...<br>
        Plötzlich nahm er einen Zettel von {person2}s Tisch und machte sich eine Notiz.<br>
        <br>
        Sie vereinbarten sich in 30 Minuten vor dem Kontrollraum zu treffen, da ein gemeinsames durchqueren des U-Boots zu
        gefährlich war.
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Kontrollraum',
        description: 'Drei gegen den Rest.',
        image: 'kontrollraum.jpg',
        depends: utils.indexes_by(function(l) l.meta.title, ['Hilfe!!', 'Technikraum'], $.levels),
      },
      text: |||
        Nun war es soweit.<br>
        Die Konfrontation mit den Verrätern lies sich nicht mehr vermeiden.<br>
        Es ging um alles oder nichts.<br>
        <br>
        Als {person1} zum Kontrollraum kam, waren {person2} und {person3} schon da. Sie waren sichtlich nervös, was
        er ihnen natürlich nicht verübeln konnte, denn ihm ging es genauso.<br>
        <br>
        <b>Wie ist der Plan?</b>, fragte {person2} in die Runde.<br>
        <br>
        <b>Wir müssen die Kontrolle zurückgewinnen.</b>, antwortete {person1}.<br>
        <br>
        <b>Ich schlage Folgendes vor: Ihr gebt vor mich erwischt zu haben und führt mich mit scheinbar
        verbundenen Händen in den Raum. Es werden wahrscheinlich an die 5 Personen anwesend sein. Wir
        müssen alle ausschalten um die Kontrolle zurückzugewinnen. Sobald dies geschehen ist, verbarrikadieren wir
        den Zugang und versuchen die K-19 an die Oberfläche zu bekommen, verstanden?</b>, schlug {person1} vor.<br>
        <br>
        <b>Geht klar!</b>, stimmten {person2} und {person3} zu.<br>
        <br>
        Und so began das gefährliche Manöver. Die Luke öffnete sich und es waren 4 Personen zu sehen. {person4},
        {person5}, {person6} und {person7}. Sie waren sehr überrascht und griffen alle nach dem nächsten Gegenstand den
        sie finden und als Waffe einsetzen konnten. {person2} und {person3} erklärten sich, was die Anspannung
        sofort etwas mildern konnte.<br>
        <br>
        Sie versuchten sich so gut es ging im Raum zu verteilen, sodass jeder so nah wie möglich an einer
        Person war und dann gab {person1} das Zeichen!<br>
        <br>
        {person2} schaltete {person4} aus, der an den Steuerelementen stand. {person3} kümmerte sich um
        {person5}, der beim Periskop stand und durch eine geschickte Drehung des Periskops
        einen Schlag auf den Hinterkopf bekam.<br>
        Es waren nurnoch {person6} und {person7} übrig. {person1}, der sich von hinten anschleichen und beide ausschalten wollte,
        stolperte und fiel zu Boden.<br>
        <br>
        Die Situation immernoch nicht ganz begreifend schrie {person6} plötzlich:<br>
        <br>
        <b>STOP!! Die Raketen sind scharf und werden in 15 Minuten abgeschossen!!<br>
        Wir wissen zwar nur einen Teil des Codes, aber wenn ihr das verhindern wollt braucht ihr unsere Hilfe!!<br>
        Wenn ihr versprecht unsere Mittäterschaft zu verschweigen werden wir euch helfen...</b><br>
        <br>
        {person1} rief {person2} und {person3} zu sich. Sie waren sich einig nicht wirklich eine Wahl zu haben und
        stimmten der Forderung schließlich zu.<br>
        <br>
        <b>{person6}:</b> Okay, der zweite Teil des Codes lautet 982853987.<br>
        <b>{person7}:</b> STOP, was erzählst du da? Der zweite Teil des Codes lautet 234655463.<br>
        <br>
        {person1} konnte es nicht fassen. Was für ein Spiel wurde hier gespielt? Doch dann ging ihm ein Licht auf.<br>
        <br>
        Er stellte {person6} nur eine einzige Frage und war sich sicher den korrekten Code zu wissen!
      |||,
      question: templates.SelectQuestion {
        text: 'Welche Frage stellte er {person6}?',
        answers: [
          templates.Answer {
            text: 'Sagst du die Wahrheit?',
            value: '0',
          },
          templates.Answer {
            text: 'Welchen Code würde mir {person7} geben?',
            value: '982853987',
            correct: true,
          },
          templates.Answer {
            text: 'Sagt {person7} die Wahrheit?',
            value: '0',
          },
          templates.Answer {
            text: 'Lügt ihr beide?',
            value: '0',
          },
        ],
      },
      hints: [
        'In welchem Verhältnis stehen {person6} und {person7}?',
      ],
      success: |||
        {person6} antwortete ihm: <b>{person7} würde euch den Code 234655463 geben.</b>
        <br>
        {person2} und {person3} grinsten, denn sie hatten verstanden was dies bedeutete.<br>
        <br>
        Die rannten alle drei zu der Abschusskonsole...
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'ende',
        title: 'Endgame',
        description: 'Es geht um alles!',
        image: 'deadline.jpg',
        depends: utils.indexes_by(function(l) l.meta.title, ['Kontrollraum'], $.levels),
      },
      text: |||
        Der Countdown tickte. Sie hatten nicht mehr viel Zeit und nur einen Versuch!!!
      |||,
      question: templates.TextQuestion {
        text: 'Wie lautet der Abbruch-Code?',
        value: '348114449294-982853987-59270400',
        levenshtein: 0,
        ignorecase: true,
      },
      success: |||
        Sie hatten es geschafft! Die Raketen waren entschärft. Sie verriegelten den Raum und brachten
        die K-19 zum Auftauchen.<br>
        <br>
        Sämtliche Verräter wurden verhaftet und von einem Militärgericht verurteilt.<br>
        <br>
        {person1}, {person2} und {person3} gingen als Helden in die Geschichte ein!!
      |||,
    },
  ],
}
