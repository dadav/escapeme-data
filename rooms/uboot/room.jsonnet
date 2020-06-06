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
        title: 'Der Raum',
        description: $.levels[0].success,
        image: 'kammer.jpg',
        depends: [0],  //std.join('-', std.map(function(q) q.value, $.levels[0].questions)),
      },
      text: |||
        Er war voller Tatendrang, stand nun aber vor der großen Herausforderung,
        aus diesem Gefängnis aus Stahl zu entkommen.
        Der einzige Ausgang war eine kleine Luke am Ende des Raums, die natürlich mit einem Passwort verriegelt
        war.<br>
        Doch was war das? Neben dem Eingabefeld für das Passwort hing ein kleiner Zettel. Könnte das etwa...?<br>
        <br>
        Es war <b>ein Rätsel</b> und sollte den Verrätern wohl als Gedankenstüzte dienen, falls sie sich aus Versehen einsperrten.<br>
        <br>
        "<b>Eins nach dem anderen..</b>", murmelte {person1} vor sich hin und machte sich daran, das Rätsel zu lösen<br>
        <br>
        <img class="img-fluid" src="../../../notiz.jpg">
        <br>
      |||,
      question: templates.TextQuestion {
        text: 'Wie lautet das Passwort?',
        value: 'nichts',
      },
      success: |||
        Unglaublich, dass man für dieses Passwort eine Notiz benötigt, oder?<br>
        <br>
        {person1} hat sich nun endlich wieder auf freiem Fuß und kann erkunden was da los ist!!
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Der Plan',
        description: '{person1} überlegt wie er vorgehen soll...',
        image: 'plan.jpg',
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
