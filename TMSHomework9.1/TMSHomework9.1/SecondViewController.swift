import UIKit

class SecondViewController: UIViewController {
    
    var textReciever = ""
    var costReciever = ""
    var amountLitersReciever = ""
    var nameOfBeerReciever = ""
    var beer: Beer?
    
    @IBOutlet weak var showClassPropertiesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showClassPropertiesLabel.text = "\(nameOfBeerReciever) have \(amountLitersReciever) liters and cost of one liters is \(costReciever)$"
        guard let beer else { return }
        
        //showClassPropertiesLabel.text = "\(beer.nameOfBeer) have \(beer.amountLiters) liters and cost of one liters is \(beer.cost)$"
    }
    
    @IBAction func goToThirdScreenButtonTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Third", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else { return }
        
        vc.secondTextReciever = textReciever
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
