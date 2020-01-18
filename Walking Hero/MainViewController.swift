
import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

  
    @IBAction func playButtonTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "GameViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func scoresButtonTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ScoresViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
