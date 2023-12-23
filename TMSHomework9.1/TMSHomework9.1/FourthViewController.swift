import UIKit

class FourthViewController: UIViewController {

    var thirdTextReciever = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToFifthScreenButtonTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Fifth", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "FifthViewController") as? FifthViewController else { return }
        
        vc.fourthTextReciever = thirdTextReciever
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
