local templates = import '../../templates.libsonnet';

templates.Room {
  meta: templates.RoomMeta {
    title: 'Die Reise mit dem U-Boot',
    description: 'Erlebe ein Abenteuer in dem sich alles um ein mysteriöses U-Boot dreht!',
    image: 'submarine.jpg',
    soundfile: 'uboat.mp3',
    duration: '1h45m',
    difficulty: 'normal',
  },
  customizations: [
    templates.Customization {
      description: 'Person1',
      variable: 'person1',
      default: 'Manuel',
    },
  ],
  text: |||
    Ummm..mein Kopf..
    <br>
    Alles ist dunkel...wo bin ich?

    Meine Augen...sie sind..verbunden??

    {person1}? Bist du das?
  |||,
  levels: [
    templates.Level {
      meta: templates.LevelMeta {
        title: 'Level 1',
        description: '',
        image: 'submarine.jpg',
        type: 'start',
        password: '',
      },
      text: 'In dieser Geschichte geht es um {person1}',
      questions: [
        templates.Question {
          text: 'Wer ist der Mörder?',
          answers: [
            templates.Answer {
              text: '{person1}',
              value: '{person1}',
              correct: true,
            },
            templates.Answer {
              text: '{person1}',
              value: '{person1}',
              correct: false,
            },
          ],
        },
      ],
    },
    templates.Level {
      meta: templates.LevelMeta {
        title: 'Level 2',
        description: '',
        image: 'submarine.jpg',
        type: 'ende',
        password: std.join('-', std.map(function(q) q.value, $.levels[0].questions)),
        lock: {
          text: 'test',
        },
      },
      text: 'Das ist die Erklärung',
      questions: [
        templates.Question {
          text: 'Das ist die Frage',
          answers: [
            templates.Answer {
              text: 'antwort 1',
              value: 'ABC',
              correct: true,
            },
            templates.Answer {
              text: 'antwort 2',
              value: 'ABCD',
              correct: false,
            },
          ],
        },
      ],
    },
  ],
}
