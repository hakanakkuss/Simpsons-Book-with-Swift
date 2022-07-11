
//

import UIKit

class DetailsViewController: UIViewController {
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpsons : Simpsons?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpsons?.name
        jobLabel.text = selectedSimpsons?.job
        imageView.image = selectedSimpsons?.image

    }
    


}
