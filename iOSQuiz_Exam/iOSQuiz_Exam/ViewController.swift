//
//  ViewController.swift
//  iOSQuiz_Exam
//
//  Created by administrator on 03/10/2021.
//
// Abdullah Albohalika


import UIKit

class ViewController: UIViewController {
    
    // Question label that displays the questions to the user
    @IBOutlet weak var questionLabel: UILabel!
    
    
    // Button outlets
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var fourthButton: UIButton!
    
    
    // Variables
    var correctAsnwer = String()
    
    
    
    // Actions
    
    // Associate each button with an if statement to check if the answer is correct
    // If the answer is correct, display the correct screen, if not, display the wrong screen.
    @IBAction func firstButtonAction(_ sender: Any) {
        if (correctAsnwer == "1"){
            performSegue(withIdentifier: "showResults", sender: nil)
        } else {
            performSegue(withIdentifier: "showWrong", sender: nil)
        }
        randomQuestions()
    }
    
    @IBAction func secondButtonAction(_ sender: Any) {
        if (correctAsnwer == "2"){
            performSegue(withIdentifier: "showResults", sender: nil)
        } else {
            performSegue(withIdentifier: "showWrong", sender: nil)
        }
        randomQuestions()
    }
    
    @IBAction func thirdButtonAction(_ sender: Any) {
        if (correctAsnwer == "3"){
            performSegue(withIdentifier: "showResults", sender: nil)
        } else {
            performSegue(withIdentifier: "showWrong", sender: nil)
        }
        randomQuestions()
    }
    
    @IBAction func fourthButtonAction(_ sender: Any) {
        if (correctAsnwer == "4"){
            performSegue(withIdentifier: "showResults", sender: nil)
        } else {
            performSegue(withIdentifier: "showWrong", sender: nil)
        }
        randomQuestions()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomQuestions()
    }
    
    
    
    // Functions
    func randomQuestions() {
        
        switch (Int.random(in: 0..<5)) {
        
            
        // Displays questions randomly
        case 1:
            questionLabel.text = "Who wrote this code?"
            firstButton.setTitle("Wael", for: UIControl.State.normal)
            secondButton.setTitle("Abdullah", for: UIControl.State.normal)
            thirdButton.setTitle("Alhanouf", for: UIControl.State.normal)
            fourthButton.setTitle("Arwa", for: UIControl.State.normal)
            
            correctAsnwer = "2"
            break
            
            
        case 2:
            questionLabel.text = "What does WWW stands for?"
            firstButton.setTitle("World War Weapon", for: UIControl.State.normal)
            secondButton.setTitle("Where, When, Who", for: UIControl.State.normal)
            thirdButton.setTitle("World Wide Web", for: UIControl.State.normal)
            fourthButton.setTitle("We Will Win", for: UIControl.State.normal)
            
            correctAsnwer = "3"
            
            break
            
            
        case 3:
            questionLabel.text = "What is the name of the biggest technology company in South Korea?"
            firstButton.setTitle("Samsung", for: UIControl.State.normal)
            secondButton.setTitle("Hyundai", for: UIControl.State.normal)
            thirdButton.setTitle("Kia", for: UIControl.State.normal)
            fourthButton.setTitle("LG", for: UIControl.State.normal)
            
            correctAsnwer = "1"
            break
            
            
        case 4:
            questionLabel.text = "What is the largest oasis in the world?"
            firstButton.setTitle("Siwa Oasis", for: UIControl.State.normal)
            secondButton.setTitle("Ubari Oasis", for: UIControl.State.normal)
            thirdButton.setTitle("Huacachina Oasis", for: UIControl.State.normal)
            fourthButton.setTitle("Al Ahsa", for: UIControl.State.normal)
            
            correctAsnwer = "4"
            break
            
        
        case 5:
            questionLabel.text = "What is the most consumed manufactured drink in the world?"
            firstButton.setTitle("Water", for: UIControl.State.normal)
            secondButton.setTitle("Coffee", for: UIControl.State.normal)
            thirdButton.setTitle("Tea", for: UIControl.State.normal)
            fourthButton.setTitle("Pepsi", for: UIControl.State.normal)
            
            correctAsnwer = "3"
            break
            
            
        default:
            break
        }
    }

}

