//
//  ViewController2.swift
//  poifull
//
//  Created by Hiromichi Nagase on 2023/02/04.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var punnsinn: UIImageView!
    @IBOutlet weak var zisinn: UIImageView!
    @IBOutlet weak var zyousinn: UIImageView!
    var timer:Timer!
    var calendar = Calendar.current
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {(t) in
            let date:Date = Date()
            let comps = self.calendar.dateComponents([.year, .month, .day, .hour, .minute, .second, .weekday], from: date)
            self.label1.text = String(comps.hour!)//時針
            self.label2.text = String(comps.minute!)//分針
            self.label3.text = String(comps.second!)//秒針
            self.punnsinn.transform = CGAffineTransform(rotationAngle: CGFloat(Int(comps.minute!) * 6) * .pi / 180)
            self.zisinn.transform =
                CGAffineTransform(rotationAngle:
                CGFloat(Double(comps.hour!) * 30.0 + 0.5*Double(comps.minute!)) * .pi / 180)
            self.zyousinn.transform = CGAffineTransform(rotationAngle: CGFloat(Int(comps.second!) * 6) * .pi / 180)
       
        })
       
    }
    



}
 
