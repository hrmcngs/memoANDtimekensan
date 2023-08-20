//
//  ViewController3.swift
//  poifull
//
//  Created by Hiromichi Nagase on 2023/02/04.
//

import UIKit
import Eval

let config = DoubleEvalConfiguration()

class ViewController3: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(_ sender: Any) {
        do {let result1:Double! = try Evaluator.execute(expression:textfield.text!, configuration:config) as? Double
            if result1==nil{label.text = "計算機って何か知ってる？"}
            else{label.text = String(result1)}
            
        }
        catch {label.text = "計算機って何か知ってる？"}
        
    }
    
  
}
