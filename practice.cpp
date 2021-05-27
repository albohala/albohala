#include <iostream>
using namespace std;

void Introduction(int Difficulty)
{
    // Print welcome messages to the terminal
    cout << endl;
    cout << "================================================================";
    cout << "\nYou are a secret agent breaking into a level " << Difficulty;
    cout << " secure server room...\nEnter the correct code to continue..." << endl;
}

bool PlayGame(int Difficulty)
{
    Introduction(Difficulty);

    const int CodeA = (rand() % 4;
    const int CodeB = (rand() % 4;
    const int CodeC = (rand() % 4;
    
    const int CodeSum = CodeA + CodeB + CodeC;
    const int CodeProduct = CodeA * CodeB * CodeC;

    // Print sum and product to the terminal
    cout << endl;
    cout << "+ There are 3 numbers in the code" << endl;
    cout << "+ The codes add-up to: " << CodeSum << endl;
    cout << "+ The codes multiply to give: " << CodeProduct << endl;

    // Store player guess
    int GuessA, GuessB, GuessC;
    cin >> GuessA >> GuessB >> GuessC;

    int GuessSum = GuessA + GuessB + GuessC;
    int GuessProduct = GuessA * GuessB * GuessC;

    // Print the entered numbers and the result of the game
    cout << "You entered: " << GuessA << GuessB << GuessC << endl;

    if (GuessSum == CodeSum && GuessProduct == CodeProduct)
    {
        cout << "\nYou win! Continue to the next level" << endl;
        return true;
    }
    else
    {
        cout << "\nWRONG! Try again! \n";
        return false;
    }

}

int main()
{
    int LevelDifficulty = 1;
    const int MaxLevel = 5;

    while(LevelDifficulty <= MaxLevel) //Loop the game until all levels are completed
    {
        bool bLevelComplete = PlayGame(LevelDifficulty);
        cin.clear(); // Ckears aby errors
        cin.ignore(); // Dicards ther buffer

        if (bLevelComplete)
        {
            // Increase the level difficulty
            ++LevelDifficulty;
        }
        
    }

    cout << "You have cracked the enemy's serevers. Well done agen! \n";

    return 0;
}