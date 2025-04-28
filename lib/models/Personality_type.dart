enum PersonalityType {
  thinker('You are a Thinker 🧠 Logical, curious, and focused on ideas'),
  feeler('You are a Feeler 💖 Empathetic, warm, and guided by emotion'),
  planner('You are a Planner 📅 Organized, strategic, and goal-oriented'),
  adventurer(
    'You are an Adventurer 🗺️ Spontaneous, bold, and always exploring',
  );

  final String description;
  const PersonalityType(this.description);
}
