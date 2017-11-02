class Exercise {
  final String name;
  final String description;
  final String duration;

  Exercise(this.name, {this.description, this.duration});

  String toString() => duration == null ? name : '$name ($duration)';
}

class Routine {
  final String name;
  List<Exercise> exercises = [];

  Routine(this.name);

  void add(Exercise exercise) {
    exercises.add(exercise);
  }
}

final List<Routine> routines = [
  stretch1(),
  mth(),
  tufri(),
  stretch2(),
];

Routine stretch1() {
  Routine r = new Routine('Morning excercises');
  r.add(new Exercise('Standing hip pivot'));
  r.add(new Exercise('Wall sit hamstring stretch', duration: '2 min'));
  r.add(new Exercise('Cat cow'));
  r.add(new Exercise('Plank', duration: '1 min'));
  r.add(new Exercise('Quadiped'));
  return r;
}

Routine stretch2() {
  Routine r = new Routine('Evening excercises');
  r.add(new Exercise('Standing hip pivot'));
  r.add(new Exercise('Wall sit hamstring stretch', duration: '2 min'));
  r.add(new Exercise('Cat cow'));
  r.add(new Exercise('Plank', duration: '1 min'));
  r.add(new Exercise('Dead bug'));
  return r;
}

Routine mth() {
  Routine r = new Routine('Strength Mon / Thurs'); // TODO:
  r.add(new Exercise('Goblet Squat; 4 Sets 20 Reps'));
  r.add(new Exercise('Plank Rows; 4 Sets 10-15 Reps Each Side'));
  r.add(new Exercise('Lying Extensions; 4 Sets 10 Reps'));
  r.add(new Exercise('Alternating Curls; 4 Sets 10 Reps'));
  return r;
}

Routine tufri() {
  Routine r = new Routine('Strength Tues / Fri'); // TODO:
  r.add(new Exercise('Chest Press to Bent Arm Pull-Overs; 4 Sets 12 Reps'));
  r.add(new Exercise('Single Dumbbell Press; 4 Sets 15 Reps'));
  r.add(new Exercise('Single Calve Raise; 4 Sets 15 Reps Each Calf'));
  r.add(new Exercise('Weighted Crunches; 4 Sets 25 Reps'));
  return r;
}
