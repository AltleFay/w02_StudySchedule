class Subject {
  final String Code;
  final String Name;
  final String Room;

  Subject(this.Code, this.Name, this.Room);

  @override //override from default to what i want it to be
  String toString() { //String Default by toString function to combine with override function
    return ' 🪪 $Code - 📚 $Name ( 🪑 Room $Room)'; //Cosmetic with an emote :)
  }
}

class Schedule {
  final String Day;
  final String Time;
  final List<Subject> Subjects;

  Schedule(this.Day, this.Time, this.Subjects);

  void printSchedule() { //Separate Subject and Schedule when run on terminal
    print('📅 $Day (🕒 $Time):');
    for (var Subject in Subjects) {
      print('  - ${Subject.toString()}');
    }
  }
}

void main() {
  var monday = Schedule(
    'Monday',
    'Half-Afternoon',
    [
      Subject('9023051', 'Mobile Programming 1', '437'),
    ],
  );

  var tuesday = Schedule(
    'Tuesday',
    'Half-Afternoon',
    [
      Subject('9023022', 'User Experience Design', '433'),
    ],
  );

  var wednesday = Schedule(
    'Wednesday',
    'Half-Morning',
    [
      Subject('9023053', 'Database Application Development', '437'),
    ],
  );

  var thursday = Schedule(
    'Thursday',
    'Full',
    [
      Subject('9023052', 'Game Design and Development', '433'),
      Subject('9012061', 'Data Communications and Computer Networks', '434'),
    ],
  );

  var friday = Schedule(
    'Friday',
    'Half-Morning',
    [
      Subject('9034503', 'Computer Security Management', '425'),
    ],
  );

  monday.printSchedule();
  tuesday.printSchedule();
  wednesday.printSchedule();
  thursday.printSchedule();
  friday.printSchedule();
}