
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countuplabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        countuplabel.text = String(count)
    }
    
    @IBAction func plus(_ sender: Any){
        
        count = count + 1
        countuplabel.text = String(count)
        
        if count >= 10{
            changecolor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {

        count = count - 1
        countuplabel.text = String(count)
        
        if count <= 0{
            resetcolor()
        }
    }
    
    func changecolor(){

        countuplabel.textColor = .yellow
    }
    
    func resetcolor(){

        countuplabel.textColor = .white
    }
}

