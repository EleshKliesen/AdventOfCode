part of day_lib;

String day1p1() {
  var input = getInput('day1');
  var split = input.split('\n');
  var int_list = split.map(int.parse).toList();
  var sum = 0;
  int_list.forEach((int e){sum += (e/3).floor() - 2;});

  return sum.toString();
}

String day1p2() {
  var input = getInput('day1');
  var split = input.split('\n');
  var int_list = split.map(int.parse).toList();
  var sum = 0;
  int_list.forEach((int e){sum += getFuel(e);});
  return sum.toString();
}

int getFuel(int fuel) {
  var requiredFuel = (fuel/3).floor() - 2;
  if (requiredFuel <= 0) {
    return 0;
  } else {
    return requiredFuel + getFuel(requiredFuel);
  }
}