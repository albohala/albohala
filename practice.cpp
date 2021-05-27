#include <iostream>
using namespace std;

void Introduction(int Difficulty)
{
    // Print welcome messages to the terminal
    cout << endl;
    cout << "================================================================";
    cout << "\nYou are a secret agent breaking into a level " << Difficulty;
    cout << endl;
    cout << "secure server room...\nEnter the correct code to continue..." << endl;
}

bool PlayGame(int Difficulty)
{
    Introduction(Difficulty);

    const int CodeA = 4;
    const int CodeB = 3;
    const int CodeC = 2;
    
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
        cout << "\nYou win!" << endl;
        return true;
    }
    else
    {
        cout << "\nWRONG! \n";
        return false;
    }

}

int main()
{
    int LevelDifficulty = 1;
    while(true)
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
    return 0;
}