enum TicTacToeMark {
  x,
  o,
  none,
}

enum TicTacToeState {
  xTurn,
  oTurn,
  xWon,
  oWon,
  tie,
}

class TicTacToeGame {
  TicTacToeState state = TicTacToeState.xTurn;
  final List<TicTacToeMark> board =
      List<TicTacToeMark>.filled(9, TicTacToeMark.none);

  void pressedSquare(int index) {
    if (board[index] != TicTacToeMark.none) {
      print("This spot isn't empty.  Ignore this press.");
      return;
    }

    if (state == TicTacToeState.xTurn) {
      board[index] = TicTacToeMark.x;
      state = TicTacToeState.oTurn;
      checkForGameOver();
    } else if (state == TicTacToeState.oTurn) {
      board[index] = TicTacToeMark.o;
      state = TicTacToeState.xTurn;
      checkForGameOver();
    } else {
      print("This game is over.  Ignore this press.");
    }
  }

  void checkForGameOver() {}

  String get stateString => state.toString().split(".").last;

  String get boardString {
    String b = "";
    for (final mark in board) {
      b += (mark == TicTacToeMark.x)
          ? "X"
          : ((mark == TicTacToeMark.o) ? "O" : "-");
    }
    return b;
  }

  @override
  String toString() {
    return "$stateString $boardString";
  }
}

void main() {
  print("Testing TicTacToeGame");
  developmentWithPrintStatements();
}

void developmentWithPrintStatements() {
  var game = TicTacToeGame();
  // print(game.state);
  // print(game.board);
  print("xTurn --------- $game");
  game.pressedSquare(4);
  print("oTurn ----X---- $game");
  game.pressedSquare(0);
  print("xTurn O---X---- $game");
}
