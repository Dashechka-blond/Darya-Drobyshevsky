//
//  ViewController.swift
//  Calculate/

//
//  Created by Darya Drobyshevsky on 12/18/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberFromScreen:Double = 0;
    var firstNum:Double = 0;
    var operation:Int = 0
    var mathSign:Bool = false;
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true{
            result.text = String(sender.tag)
            mathSign = false
        }
        else{
            result.text = result.text! + String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!
        
    }
    
    
    @IBAction func buttoms(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 17 {
            
            firstNum = Double(result.text!)!
            
            if  sender.tag == 11 {// +/-
                result.text = "+/-";
                

                
        }
            else if sender.tag == 12{   // %
                result.text = "%";

        }
            else if sender.tag == 13{ // /
                result.text = "/";

        }
            else if sender.tag == 14{ // *
                result.text = "*";

        }
            else if sender.tag == 15{ // -
                result.text = "-";

        }
            else if sender.tag == 16{ // +
                result.text = "+";


        }
            operation = sender.tag
            mathSign = true
        }
        else if sender.tag == 17{ // посчитать все
            
            if operation == 13{
                result.text = String(firstNum / numberFromScreen)
            }
        else if operation == 14 {
            result.text = String(firstNum * numberFromScreen)
        }
        else if operation == 15 {
            result.text = String(firstNum - numberFromScreen)
    }
        else if operation == 16 {
            result.text = String(firstNum + numberFromScreen)
        }
    }
        else if sender.tag == 10{
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
    
