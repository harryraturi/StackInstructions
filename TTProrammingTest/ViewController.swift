//
//  ViewController.swift
//  TTProrammingTest
//
//  Created by Harish Raturi on 06/07/18.
//  Copyright © 2018 Harish Raturi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var localStack = Stack() {
        didSet {
            self.textView.text = localStack.description
        }
    }
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func multiple(){
        if localStack.count >= 2 {
            let num1 = localStack.pop()
            let num2 = localStack.pop()
            let newNum = num1! * num2!
            localStack.push(newNum)
        }
    }

    
    @IBAction func pushAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Push into stack!", message: "Please enter number:", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "OK", style: .default) { (_) in
            guard let textFields = alertController.textFields,
                textFields.count > 0 else {
                    // Could not find textfield
                    return
            }
            
            let field = textFields[0]
            self.localStack.push(Int(field.text!)!)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter number"
            textField.keyboardType = .numberPad
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func popAction(_ sender: Any) {
        _ = self.localStack.pop()
    }
    
    
    @IBAction func multiAction(_ sender: Any) {
        self.multiple()
    }
    
    
    @IBAction func printAction(_ sender: Any) {
        self.textView.text = ""
        self.textView.text = self.localStack.description
    }
    
    @IBAction func stopAction(_ sender: Any) {
        exit(0)
    }
    

}


