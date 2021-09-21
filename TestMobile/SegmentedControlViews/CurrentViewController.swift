//
//  CurrentViewController.swift
//  TestMobile
//
//  Created by الله أكبر on 20/09/21.
//

import UIKit

class CurrentViewController: UITableViewController {

    var searchController = UISearchController(searchResultsController: nil)
    
    
    
    let cellId = "cellId"
    var currentproduct : [Currentproduct]  = [Currentproduct]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createProductArray()

        tableView.register(CurrentproductCell.self, forCellReuseIdentifier: cellId)
        view.backgroundColor = Utils.dashboardcolor

    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
 
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CurrentproductCell
        let currentLastItem = currentproduct[indexPath.row]
        cell.isUserInteractionEnabled = false
        cell.Currentproduct = currentLastItem
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentproduct.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*0.6
    }
    
    
    func createProductArray() {
    
        currentproduct.append(Currentproduct(currentLocation: "12503 Apex Great Basin Way", currentImage: #imageLiteral(resourceName: "location") , currentData: "13 Sep, 2021 ", currentData2: "18 Sep, 2021", currentName: "Fort Gibson, OK", currentName2: "Portlan, TX")
    )

 

  
//    currentproduct.append(Currentproduct(currentLocation: "12503 Apex Great Basin Way", currentImage: #imageLiteral(resourceName: "location") , currentData: "Fort Gibson, OK", currentData2: "Portlan, TX", currentName: ))
//
    


}
}
