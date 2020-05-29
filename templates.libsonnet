{
  local templates = self,

  Meta: {
    title: error 'Titel fehlt',
    description: error 'Beschreibung fehlt',
    image: error 'Bilddatei fehlt',
    thumbnail: self.image,
    soundfile: '',
    assert std.length(self.description) <= 140 : 'Beschreibung ist zu lang',
  },

  RoomMeta: templates.Meta {
    duration: error 'Angabe zur Dauer fehlt',
    difficulty: error 'Angabe zur Schwierigkeit fehlt',
    assert std.member(['normal', 'mittel', 'schwer'], self.difficulty) == true,
  },

  LockPage: {
    text: error 'Text fehlt',
    image: '',
    assert std.isString(self.text),
  },

  LevelMeta: templates.Meta {
    password: '',
    lock: if std.length(self.password) > 0 then templates.LockPage else null,  // Wenn ein Passwort gesetzt ist, benötigen wir Daten zu Lockpage
    type: 'normal',
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
    text: error 'Text fehlt',
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
    questions: error 'Fragen fehlen',
  },

  Room: {
    meta: templates.RoomMeta,
    text: error 'Kein Text angegeben',
    levels: error 'Keine Level angegeben',
    assert std.isArray(self.levels) == true,
  },
}
