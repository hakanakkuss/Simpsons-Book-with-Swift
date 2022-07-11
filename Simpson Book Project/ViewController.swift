//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?
 
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let hommer = Simpsons(SimpsonName: "Charles", SimpsonJob: "Software Engineer", Simpsonimage: UIImage(named: "Charles.png")!)
        
        let maggie = Simpsons(SimpsonName: "Maggie", SimpsonJob: "Doctor", Simpsonimage: UIImage(named: "Maggie.png")!)
        
        let moe = Simpsons(SimpsonName: "Moe", SimpsonJob: "Architech", Simpsonimage: UIImage(named: "Moe.jpg")!)
        
        let nelson = Simpsons(SimpsonName: "Nelson", SimpsonJob: "Butcher", Simpsonimage: UIImage(named: "Nelson.jpg")!)
        
        
        //en yukarıda mySimpsons adında bir dizi oluşturduk ve elemanlarını da bu şekilde ekledik
        mySimpsons.append(hommer)
        mySimpsons.append(maggie)
        mySimpsons.append(moe)
        mySimpsons.append(nelson)
        
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name  //mySimpsons dizisinin ögelerinin name lerini al row lara yaz demek
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpsons = chosenSimpson
        }
    }
    
    


}

