import UIKit

class ViewController: UIViewController {
    
    var dataToSend = "Hello the fifth screen"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToSecondScreenButtonTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        vc.modalPresentationStyle = .fullScreen
        vc.textReciever = dataToSend
        vc.costReciever = String(Beer.shared.cost)
        vc.amountLitersReciever = String(Beer.shared.amountLiters)
        vc.nameOfBeerReciever = Beer.shared.nameOfBeer
        vc.beer = Beer()
        present(vc, animated: true, completion: nil)
    }
}
