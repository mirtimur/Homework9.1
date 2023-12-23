import UIKit

class FifthViewController: UIViewController {
    
    var fourthTextReciever = ""
    
    @IBOutlet weak var dataSend: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSend.text = fourthTextReciever
    }
    
    @IBAction func returnToFirstScreen(_ sender: UIButton) {
       dismiss(animated: true)
    }
}
