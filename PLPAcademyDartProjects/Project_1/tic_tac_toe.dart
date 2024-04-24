import 'dart:io';

class TicTacToe {
  List<List<String>> board;
  String currentPlayer;

  TicTacToe() {
    board = List.generate(3, (_) => List.filled(3, ' '));
    currentPlayer = 'X';
  }

  void displayBoard() {
    for (var row in board) {
      print(row.join(' | '));
      print('---------');
    }
  }

  void switchPlayer() {
    currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
  }

  bool placeMark(int row, int col) {
    if (board[row][col] == ' ') {
      board[row][col] = currentPlayer;
      return true;
    }
    return false;
  }

  bool checkWin() {
    // Check rows and columns
    for (var i = 0; i < 3; i++) {
      if (board[i][0] == currentPlayer &&
          board[i][1] == currentPlayer &&
          board[i][2] == currentPlayer) {
        return true;
      }
      if (board[0][i] == currentPlayer &&
          board[1][i] == currentPlayer &&
          board[2][i] == currentPlayer) {
        return true;
      }
    }
    // Check diagonals
    if ((board[0][0] == currentPlayer &&
            board[1][1] == currentPlayer &&
            board[2][2] == currentPlayer) ||
        (board[0][2] == currentPlayer &&
            board[1][1] == currentPlayer &&
            board[2][0] == currentPlayer)) {
      return true;
    }
    return false;
  }

  bool checkTie() {
    for (var row in board) {
      for (var cell in row) {
        if (cell == ' ') {
          return false;
        }
      }
    }
    return true;
  }
}

void main() {
  var game = TicTacToe();
  print('Welcome to Tic Tac Toe!');
  
  while (true) {
    game.displayBoard();
    print('Player ${game.currentPlayer}, enter your move (row col):');
    var input = stdin.readLineSync();
    var coordinates = input.split(' ');
    if (coordinates.length != 2) {
      print('Invalid input. Please enter row and column separated by a space.');
      continue;
    }
    var row = int.tryParse(coordinates[0]);
    var col = int.tryParse(coordinates[1]);
    if (row == null || col == null || row < 0 || row > 2 || col < 0 || col > 2) {
      print('Invalid row or column. Please enter numbers between 0 and 2.');
      continue;
    }
    if (!game.placeMark(row, col)) {
      print('Cell already occupied. Please choose another cell.');
      continue;
    }
    if (game.checkWin()) {
      game.displayBoard();
      print('Player ${game.currentPlayer} wins!');
      break;
    }
    if (game.checkTie()) {
      game.displayBoard();
      print('It\'s a tie!');
      break;
    }
    game.switchPlayer();
  }
}
