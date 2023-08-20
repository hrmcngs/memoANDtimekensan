//
//  ViewController.swift
//  poifull
//
//  Created by Hiromichi Nagase on 2023/01/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textview: UITextView!
    var timer:Timer!
    var uf=UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        textview.text=uf.string(forKey: "katana")
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: {(t) in
            self.uf.set(self.textview.text, forKey: "katana")
        })
        
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        uf.set(textview.text, forKey: "katana")
    }
    
    
}


