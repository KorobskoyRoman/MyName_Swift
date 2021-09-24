//
//  SecondViewController.swift
//  MyName
//
//  Created by Roman Korobskoy on 24.09.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var MyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let alertController = UIAlertController(
            title: "Welcome",
            message: "This is Roman's MyName app",
            preferredStyle: .alert)
        
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func ChangeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.MyLabel.text = "\(buttonText) button was pressed!"
        }
    }
    

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
