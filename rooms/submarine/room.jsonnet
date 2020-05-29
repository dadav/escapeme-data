local templates = import '../../templates.libsonnet';

templates.Room {
  meta: templates.RoomMeta {
    title: 'Die Reise mit dem U-Boot',
    description: 'Beschreibung',
    image: 'submarine.jpg',
    soundfile: 'uboat.mp3',
    duration: '1h45m',
    difficulty: 'normal',
  },
  text: 'html code',
  levels: [
    templates.Level {
      meta: templates.LevelMeta {
        title: 'Level 1',
        description: '',
        image: 'submarine.jpg',
        type: 'start',
        password: '',
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
              value: 'ABC',
              correct: false,
            },
          ],
        },
        templates.Question {
          text: 'Das ist die Frage',
          answers: [
            templates.Answer {
              text: 'antwort 1',
              value: 'DEF',
              correct: true,
            },
            templates.Answer {
              text: 'antwort 2',
              value: 'ABC',
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
        type: 'normal',
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
              value: 'ABC',
              correct: false,
            },
          ],
        },
      ],
    },
  ],
}
