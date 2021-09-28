
import UIKit

class CurrentViewController: UITableViewController{

    var searchController = UISearchController(searchResultsController: nil)
    let cellId = "cellId"
    var currentproduct : [Currentproduct]  = [Currentproduct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        createProductArray()
        tableView.separatorColor = .clear
//        tableView.register(CurrentproductCell.self, forCellReuseIdentifier: cellId)
        view.backgroundColor = Utils.dashboardcolor
        
    }
    
    
 
 
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row==0){
            
            tableView.register(CurrentproductCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CurrentproductCell
            let currentLastItem = currentproduct[indexPath.row]
            cell.isUserInteractionEnabled = true
            cell.currentproduct = currentLastItem
            return cell
        }else{
            
            tableView.register(TrackingproductCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TrackingproductCell
            
            let currentLastItem = currentproduct[indexPath.row]
           
            cell.currentproduct = currentLastItem
            return cell
        }
    }
    
    
   
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentproduct.count
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row==0){
            return UIScreen.main.bounds.height*0.5
            
        }else{
            return UIScreen.main.bounds.height*0.15
        }
    }
                
    func createProductArray() {
    
        currentproduct.append(Currentproduct(currentLocation: "12503 Apex Great Basin Way", currentImage: #imageLiteral(resourceName: "11") , currentData: "13 Sep, 2021 ", currentData2: "18 Sep, 2021", currentName: "Fort Gibson, OK", currentName2: "Portlan, TX", trackingtTime: "",trackingImage2: UIImage()))
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v1")))
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v2")))
      
        
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v3")))
      
        
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v1")))
        
        
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v1")))
        
        
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v1")))
        
        
        
        currentproduct.append(Currentproduct(currentLocation: "Arrived to pick-up", currentImage: UIImage() , currentData: "13 Sep, 2021, 13:27 EST ", currentData2: "", currentName: "Fort Gibson, OK", currentName2: "", trackingtTime: "On time",trackingImage2: #imageLiteral(resourceName: "v1")))
      
        
      
        

        
      
        
      
        

        
      
        
      
        

        
        
        
      
        
      
        

        
 
    
   


    
    
    }
    
    
}
