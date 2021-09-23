
import UIKit

class CurrentViewController: UITableViewController{

    var searchController = UISearchController(searchResultsController: nil)
        
    let cellId = "cellId"
    var currentproduct : [Currentproduct]  = [Currentproduct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        createProductArray()
        tableView.separatorColor = .clear
        tableView.register(CurrentproductCell.self, forCellReuseIdentifier: cellId)
        view.backgroundColor = Utils.dashboardcolor
        
        let height = UIScreen.main.bounds.height
        
        if height > 800.0
        {
            print("large screen")
        }
        else if height > 700.0
        {
            print("medium screen")
        }
        else
        {
            print("small screen")
        }
    }
    
    
 
 
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CurrentproductCell
        let currentLastItem = currentproduct[indexPath.row]
        cell.isUserInteractionEnabled = true
        cell.Currentproduct = currentLastItem
        return cell
    }
    
    
   
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentproduct.count
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*0.4
        }
                
    func createProductArray() {
    
        currentproduct.append(Currentproduct(currentLocation: "12503 Apex Great Basin Way", currentImage: #imageLiteral(resourceName: "location") , currentData: "13 Sep, 2021 ", currentData2: "18 Sep, 2021", currentName: "Fort Gibson, OK", currentName2: "Portlan, TX"))
 }
}
