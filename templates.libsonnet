{
  local templates = self,

  Customization: {
    description: error 'Beschreibung fehlt',
    variable: error 'Variable fehlt',
    default: error 'Defaultwert fehlt',
  },

  Meta: {
    title: error 'Titel fehlt',
    description: error 'Beschreibung fehlt',
    image: error 'Bilddatei fehlt',
    thumbnail: self.image,
    soundfile: '',
    cssfile: '',
    jsfile: '',
    assert std.length(self.description) <= 140 : 'Beschreibung ist zu lang',
  },

  RoomMeta: templates.Meta {
    duration: error 'Angabe zur Dauer fehlt',
    difficulty: error 'Angabe zur Schwierigkeit fehlt',
    assert std.member(['normal', 'mittel', 'schwer'], self.difficulty) == true,
    assert std.length(std.findSubstr('{', self.title)) == 0,
    assert std.length(std.findSubstr('{', self.description)) == 0,
  },

  LevelMeta: templates.Meta {
    type: 'normal',
    depends: [],
    assert std.member(['normal', 'start', 'ende'], self.type) == true,
  },

  Answer: {
    text: error 'Text fehlt',
    value: '',
    correct: false,
    assert std.isString(self.text),
    assert std.isString(self.value),
    assert std.isBoolean(self.correct),
  },

  Question: {
    text: error 'Fragetext fehlt',
    type: error 'Gebe den Typ der Frage an',
    value: error 'Antwort fehlt',
  },

  TextQuestion: templates.Question {
    type: 'text',
    value: error 'Antwort fehlt',
    ignorecase: false,
    levenshtein: 3,
  },

  SelectQuestion: templates.Question {
    type: 'select',
    answers: error 'Antworten fehlen',
    assert std.isArray(self.answers) == true,
    assert std.length(self.answers) > 1,
    assert std.length(std.filter(function(a) a.correct == true, self.answers)) == 1 : 'Nur eine Antwort darf richtig sein',
    // Enthält den Wert der korrekten Antwort
    value: std.filter(function(a) a.correct == true, self.answers)[0].value,
  },

  Level: {
    meta: templates.LevelMeta,
    text: error 'Kein Text angegeben',
    question: error 'Frage fehlt',
    success: error 'Text fehlt',
    hints: [],
  },

  Room: {
    meta: templates.RoomMeta,
    text: error 'Kein Text angegeben',
    levels: error 'Keine Level angegeben',
    customizations: [],
    assert std.isArray(self.levels) == true,
    assert std.isArray(self.customizations) == true,
  },
}
