//
//  ViewController.swift
//  Delegate
//
//  Created by TJ on 2022/04/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfInput.delegate = self
    }
    @IBAction func btnAction(_ sender: UIButton) {
        lblResult.text = tfInput.text
    }
   

}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = tfInput.text
        return true
    }
}
