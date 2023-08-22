//
//  ViewController.swift
//  poifull
//
//  Created by Hiromichi Nagase on 2023/01/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var a: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name =
            UserDefaults.standard.string(forKey: "name") {
            a.text = name
        }}
    @IBAction func handleTextChange() {  
        let text = a.text
        print(a.text ?? "(null)")
        UserDefaults.standard.setValue(text, forKey: "name")
    }

}
