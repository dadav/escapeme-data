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
        Mit schmerzendem Kopf und gefesselten Händen erlangte {person1} das Bewusstsein...<br>
        <br>
        Was zum Teufel war geschen?<br>
        Das letzte, an das er sich erinnern konnte, war die Wachablösung bei den Atomraketen gestern Nacht.<br>
        <br>
        "Bin ich tot? Ist das der Himmel?...", dachte {person1}. Nein, seine Schmerzen bewiesen ihm das Gegenteil.
        Doch etwas schlimmes musste passiert sein!<br>
        <br>
        {person1} fing an nach Hilfe zu rufen, doch niemand schien ihn zu hören.<br>
        Und selbst wenn, wem sollte er noch vertrauen? Jemand in diesem U-Boot war hierfür verwantwortlich.<br>
        <br>
        <b>Er musste die Sache also selbst in die Hand nehmen.</b><br>
        <br>
        Er tastete, so gut er konnte, mit seinen Fingern die Fesseln ab und entdeckte eine Zahlenschloss, das er noch
        sehr gut aus seiner Kindheit kannte und daher auch hinter seinem Rücken blind bedinen konnte.<br>
        Doch welche Zahlenkombination wurde verwendet?<br>
        Bei 5 Zahlen gibt es schließlich <b>100.000</b> mögliche Kombinationen...<br>
        <br>
        {person1} dachte nach und als er völlig in sich gekehrt war,
        hörte er plötzlich ganz leise folgende Geräusche:<br>

        <audio controls>
          <source src="../../../morse.mp3" type="audio/mpeg">
          Der Browser unterstützt das Format nicht.
          Lade die Datei herunter und höre sie dir an.
          <a href="../../../morse.mp3">Audio</a>
        </audio>
        <br>
        Für einen Seemann wie {person1} war diese Übung natürlich ein leichtes,
        weshalb er sich im Nu befreien konnte!
      |||,
      question: templates.TextQuestion {
        text: 'Wie lautet der Code für die Handschellen? Finde das nächste Level und gib die korrekte Kombination ein.',
        value: '83620',
      },
      hints: [
        'Die Aufnahme ist das in Morsecode verschlüsselte Passwort!',
      ],
      success: |||
        Super, {person1} konnte sich befreien und ist nun bereit den Raum zu erkunden!!
      |||,
    },
    templates.Level {
      meta: templates.LevelMeta {
        type: 'normal',
        title: 'Der Raum',
        description: '{person1} sucht einen Ausgang.',
        image: 'kammer.jpg',
        depends: [0],  //std.join('-', std.map(function(q) q.value, $.levels[0].questions)),
      },
      text: |||
        Endlich hatte {person1} die Hände wieder frei!<br>
        <br>
        Er war voller Tatendrang, stand aber vor der großen Herausforderung, erstmal aus diesem Gefängnis aus Stahl zu entkommen.
        Der einzige Ausgang war eine kleine Luke am Ende des Raums, die natürlich mit einem ihm unbekannten Passwort verriegelt
        war.<br>
        Doch was war das? Neben dem Eingabefeld für das Passwort hing ein kleiner Zettel. Könnte das etwa...?<br>
        <br>
        Nein!<br>
        <br>
        Doch!<br>
        <br>
        Ohhh!<br>
        <br>
        Es war <b>ein Rätsel</b> und sollte den Verrätern wohl als Gedankenstüzte dienen, falls sie sich aus Versehen einsperrten.<br>
        <br>
        Doch Moment mal, <b>wer war eigentlich sein heimlicher Helfer?</b><br>
        <br>
        Möglicherweise war dies die einzige Person, der er noch vertrauen konnte. Er musste sie finden.
        Eventuell war es ja {person2}, sein bester Freund seit dem Kindergarten und treuer Kamerad.<br>
        Oder es war {person3}, die einzige Frau in der Crew, seine große Liebe.<br>
        <br>
        Im besten Fall waren es beide.<br>
        Im schlimmsten Fall nur einer von beiden.<br>
        Es gab noch eine dritte Möglichkeit und {person1} schaffte es nicht, diesen Gedanken komplett zu verdrängen:
        <b>Keiner von beiden.</b><br>
        <br>
        "<b>Eins nach dem anderen..</b>", murmelte {person1} vor sich hin und machte sich daran, das Rätsel zu lösen<br>
        <br>
        <img class="img-fluid" src="../../../notiz.jpg">
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
        type: 'ende',
        title: 'Der Plan',
        description: 'Ein Plan muss her.',
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
