
import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        loadSavedText()
    }
    
    func loadSavedText() {
        if let savedText = UserDefaults.standard.string(forKey: "savedText") {
            textView.text = savedText
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if let newText = textView.text {
            UserDefaults.standard.set(newText, forKey: "savedText")
        }
    }
}


