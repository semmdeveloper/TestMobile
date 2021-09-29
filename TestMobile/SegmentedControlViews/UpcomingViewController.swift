

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
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row==0){
            
            tableView.register(UpcomingproductCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! UpcomingproductCell
            let currentLastItem = upcomingproduct[indexPath.row]
            cell.isUserInteractionEnabled = true
            cell.Upcomingproduct = currentLastItem
            return cell
        }else{
            
            tableView.register(UpcominglocationproductCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! UpcominglocationproductCell
            let currentLastItem = upcomingproduct[indexPath.row]
            cell.isUserInteractionEnabled = true
            cell.Upcomingproduct = currentLastItem
            return cell
        }
    }
    
    
   
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingproduct.count
        
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return UIScreen.main.bounds.height*0.3650
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row==0){
            return UIScreen.main.bounds.height*0.3650
            
            
        }else{
            return UIScreen.main.bounds.height*0.2400
            

        }
    }
    
    func createProductArray() {
        upcomingproduct.append(Upcomingproduct(upcomingNumber: "1", upcomingNumberTwoo: "2", upcomingName: "FTW2", upcomingNametwoo: "HDE2", upcomingImage: #imageLiteral(resourceName: "bottom")   , upcomingImageTwoo: #imageLiteral(resourceName: "time"), upcomingImageThree: #imageLiteral(resourceName: "time2"), upcomingData: "09/22 11:40 PDT", upcomingDataTwoo: "09/22 11:40 PDT", upcomingLocation: "Cranbury, New Jersey", upcomingLocationTwoo: "Hagerstown, MD"))
  
        

        
        
        
        
        

        

        


        

        
      
 }
    
    
    

   

}

