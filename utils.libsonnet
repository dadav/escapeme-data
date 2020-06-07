{
  // Hiermit kann man Arrays nach Keys suchen
  // Gibt ein Array mit Indexes zurück
  indexes_by(func, lookups, arr)::
    std.flattenArrays([
      std.find(key, std.map(func, arr))
      for key in lookups
    ]),
}
