local templates = import '../../templates.libsonnet';

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
        title: 'Gefangen',
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
        {person2} war der IT-Spezialist der K-19. Er predigte immer wie wichtig ein gutes Passwort sein würde und wie
        viele einfach Jahr für Jahr ihr Lieblingstier als Passwort benutzten würden.<br>
        {person3} hingegen war für die Kommunikation an Bord verantwortlich.<br>
        Sie lernten sich vor drei Jahren bei einem Außeneinsatz in der russischen Botschaft in den USA kennen und
        waren seither unzertrennlich.<br>
        <br>
        <b>...</b><br>
        <br>
        Mit schmerzendem Kopf und gefesselten Händen erlangte {person1} das Bewusstsein...<br>
        <br>
        Was zum Teufel war geschen?<br>
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
        Er tastete, so gut er konnte, mit seinen Fingern die Fesseln ab und entdeckte eine Zahlenschloss. {person1} hatte
        ein gutes Fingerspritzengefühl und konnte die einzelnen Zahlen fühlen.<br>
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
        'Suche im Internet nach "Morcecode"!',
      ],
      success: |||
        Endlich, {person1} konnte sich befreien und war nun bereit den Raum zu erkunden!!
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: '{person1}s Zelle',
        description: $.levels[0].success,
        image: 'kammer.jpg',
        depends: [0],  //std.join('-', std.map(function(q) q.value, $.levels[0].questions)),
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
        Die Luke war jedoch verschlossen und mit einem Passwort gesichert worden (das war bei Atom-U-Booten üblich).
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
        depends: [1],
      },
      text: |||
        {person1} entschied sich zum Funkraum zu gehen. {person3} sollte es möglich sein
        in Erfahrung zu bringen was vorgefallen war. Das Problem war nur, dass der Funkraum
        auf der anderen Seite des U-Bootes war und {person1} in Gefahr laufen konnte jemandem
        zu begegnen der nichts gutes im Sinn hatte.<br>
        <br>
        Kaum war er durch die erste Luke gestiegen, hörte er zwei Stimmen. {person1} vermutete, dass es {person4}
        und {person5} sein mussten.<br>
        <br>
        Folgendes konnte er mithören:<br>
        <br>
        <b>{person4}:</b> ...mir ergal. Wenn wir erstmal dort sind, gibt es sowieso kein zurück mehr.<br>
        <b>{person5}:</b> Da hast du recht. Ich bin immernoch ganz erstaunt, wie gut alles läuft.
        Bis auf die Sache mit {person1} gab es keine Probleme.<br>
        <b>{person4}:</b> Ja, ich hätte nie gedacht, dass {person1} da nicht mitspielt. Naja, selbst schuld...<br>
        <b>{person5}:</b> Nur gut, dass wir ihm die Abschusscodes der Rakenten abnehmen konnten.<br>
        <b>{person4}:</b> Stimmt, ohne die könnten wir den Plan nicht durchführen. Meinen Teil der Codes habe ich mir
        schon eingeprägt. Das war auch ganz einfach, weil der Code die Quersumme meiner Personalnummer ist.<br>
        <b>{person5}:</b> Pssst, {person4}, du weißt, das solltest du niemandem sagen, auch mir nicht.<br>
        <b>{person4}:</b> Verdammt, vergiss was ich gesagt habe.<br>
        <br>
        Daraufin verließen {person4} und {person5} den Raum und {person1} konnte ihn ohne Gefahr durchqueren.<br>
        <br>
        {person1} kannte den Weg wie seine Westentasche und war kurze Zeit später im Funkraum...<br>
        <br>
        <img class="img-fluid" style="max-width: 700px;" src="../../../uboot_plan.png">
        <br>
        (grüner Punkt = Start)
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
        {person3} berichtete ihm, dass die K-19 von einem radikalen Teil der Crew übernommen wurde.<br>
        Diejenigen, die sich weigerten mitzumachen, wurden ermordet, bzw. in Räume gesperrt.<br>
        <br>
        Sie entschied sich mitzuspielen, weil sie so die Chance hatte die K-19 zurückzugewinnen.<br>
        <br>
        {person1} und {person3} grübelten gemeinsam nach, wen sie um Hilfe rufen könnten...
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Technikraum',
        description: '{person1} schlägt sich zum Technikraum durch...',
        image: 'technik.jpg',
        depends: [1],
      },
      text: |||
        test
      |||,
      question: templates.SelectQuestion {
        text: 'Wie lautet das Passwort?',
        answers: [
          templates.Answer {
            text: 'answer 1',
            value: '1',
            correct: true,
          },
          templates.Answer {
            text: 'answer 2',
            value: '2',
          },
        ],
      },
      hints: [],
      success: '',
    },
  ],
}
