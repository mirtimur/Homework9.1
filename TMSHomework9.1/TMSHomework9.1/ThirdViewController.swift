import UIKit

class ThirdViewController: UIViewController {

    var secondTextReciever = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToFourthScreenButtonTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Fourth", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController else { return }
        
        vc.thirdTextReciever = secondTextReciever
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
