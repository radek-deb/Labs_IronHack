## Lab17: Understanding Other's Code
  
  
I was assigned the number 16, so the Tic-Tac-Toe game. 
According to the presented code. I understand the logic/workflow of the game as: 

  ### Logic of Tic-Tac-Toe game presennted in the code:
  - Create a dictionary with 9 elements which will be holding the values presenetd on the board game. 
  - Create a function which will allow to dispaly a pseudo board game. 
  - Then they defined a function called playersturn in which in fact the whole logic of the game is constructed. So in this function they start by:
      - Saing that player 'X' starts 
      - Then tehy set the counter, which keeps track of number of marks enterd into the boardgame 
      - The maximum number of turns is 9 that is why they created a loop in order to visualise 9 times the board and explain which turn it is. 
      - In the next step they ask for the players input 'move'
      - Then they check with the if statement if the place in the board is empty. If it is empty then the sympbol of a player associated to the variable turn is put into the gaming_board and the counter increases by one.
      - In the next step they check if one of the players won. This is done by the long if statement which is activated after 5 moves/turns, which is logic because the win is possible after inserting 5 symbols into the board game.
      - If one of the conditions of wining the game is fulfiled (8 variants; the same 3 symbols in vertical lines - 3 sases; the same 3 symbols in horizontal lines - 3 cases, and 2 cases of 3 the same symbols in diagonal lines), then the message is displayed saying that the game is over, and a message which indicates the winer.
      - Then we exit this long if statement and we check if the counter reached 9. If it did and there is no win that means that we reached a tie. 
      - Finally after exiting another nested if statement we come back to the initial if and we ask the player to select a free space. 
      - Then the game is changing the turn of the player, so X truns to O or O turns to X.
      - Then the code is asking for another user input. If the players want to play again or not. 
      - Finally, the fuction calls itself. I guess this is the problem of identation, and the reason why it is impossible to exit a game. I am assuming that this was a mistake.
  - At the very end of the code the function with the game logic is called. 

#### My comments to the proposed code: 
I think that there are right siolutions, but too much is done in one fuction. I would create smaller functions in which I can check if thhe player won, if the board game is full, which means tie. 
Then I would use those functions to create the logic of the game.  Below is proposed by me, logic of the tic tac toe game. 
  
  
### Logic of Tic-Tac-Toe game proposed by Radek
1. I will create an empty board game and display it. 
2. I will ask who wants to start 'X' or 'O'
3. I will aks player for input and the place where it should be done. At the same pont I would use while loop to check if the input was valid and if the proposed place is free.
4. I will display the board with the user input 
5. I will check for the win and if the board is full.
6. If there is no win and there are still free places on the board I will continue playing, but first I will change the player.
7. At the very end, after the game is over I will ask if player wants to play again. If yes I will reatart the board and start the game if not,  I will exit the game. 
 
