## Tic-Tac-Toe

## Rules

- Play occurs on a 3 by 3 grid of 9 squares.

- Two players takes turns only in the empty squares, the first making x's, the second o's.

- A row is any three squares on the grid, adjacent, diagonally, vertically, or horizontally.

- If one player places three of the same marks in a row, the player WINS!

- If the spaces are all filled and there is no winner, the game ends in a draw.

## Instructions

To start the game, in a terminal navigate to the root directory and type:

`ruby bin/main.rb`

or if using Windows you can simply run

`main.exe`

This is the starting screen of the game, here we have the header which includes the instructions for playing the game.

The first player who is player_one is asked to enter their name and is assigned to use letter `O` in the game while the second player who is player_two is assigned the letter 'O' once they have entered their names. 


On the main game state we have a numbered board, from 1 to 9 and a message prompting for user input. Player 'O' starts typing a number from 1 to 9 and pressing enter. Player 'X' will then be prompted for a number from 1 to 9. 

If a player inputs an invalid number, he'll receive a warning and will be prompted for input again, until a valid value is provided. Game goes on until a player wins or ties. 
The game displays the winner.

### Built With

* [Ruby](Ruby)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- CONTACT -->
## Contact

Elijah - (https://github.com/Elijahscriptdev)

Project Link: [https://github.com/Elijahscriptdev/oppruby](https://github.com/Elijahscriptdev/oppruby)