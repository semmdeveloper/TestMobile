

import UIKit

class UpcomingViewController: UITableViewController {
    
    let cellId = "cellId"
    var upcomingproduct : [Upcomingproduct]  = [Upcomingproduct]()

    override func viewDidLoad() {
        super.viewDidLoad()
        createProductArray()
        view.backgroundColor=Utils.dashboardcolor
        tableView.separatorColor = .clear
        tableView.register(UpcomingproductCell.self, forCellReuseIdentifier: cellId)
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! UpcomingproductCell
        let currentLastItem = upcomingproduct[indexPath.row]
        cell.isUserInteractionEnabled = true
        cell.Upcomingproduct = currentLastItem
        return cell
    }

    
    
   
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingproduct.count
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*0.3
        }
    
    func createProductArray() {
        upcomingproduct.append(Upcomingproduct(upcomingNumber: "1", upcomingNumber2: "2", upcomingName: "FTW2", upcomingName2: "HDE2", upcomingLine: #imageLiteral(resourceName: "lines"), upcomingImage: #imageLiteral(resourceName: "bottom")   , upcomingImage2: #imageLiteral(resourceName: "time"), upcomingImage3: #imageLiteral(resourceName: "time2"), upcomingData: "09/22 11:40 PDT", upcomingData2: "09/22 11:40 PDT", upcomingPoint: #imageLiteral(resourceName: "point"), upcomingPoint2: #imageLiteral(resourceName: "point"), upcomingLocation: "Cranbury, New Jersey", upcomingLocation2: "Hagerstown, MD"))

        

        
      
 }
    
    
    

   

}

