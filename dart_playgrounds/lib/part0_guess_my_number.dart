import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Guess My Number!");

  // Figure out in Dart how to get a random number 1 to 100
  var secretNumber = Random().nextInt(100) + 1;
  // print("Cheater text.  Solution $secretNumber");

  // start a guess counter at 0
  int counter = 0;

  // indefinate while loop
  //    prompt the user for a guess from the console.
  // .  increment our counter
  // .  if too high vs the secret number say Too High
  // .  if too low vs the secret number say Too Low
  // .  if correct exit the while loop

  while (true) {
    int? guess;
    try {
      guess = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("You enterred invalid text.  Please use a number next time");
      continue;
    }
    // print("Your number is ${guess}");
    counter++;
    if (guess < secretNumber) {
      print("Your guess was too low");
    } else if (guess > secretNumber) {
      print("Your guess was too high");
    } else {
      break;
    }
  }

  // congratualte the user and say the number of guesses needed.
  print("Great job!  You guessed the secret number in ${counter + 1} guesses!");
}
