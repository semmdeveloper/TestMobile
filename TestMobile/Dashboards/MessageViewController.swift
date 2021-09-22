//
//  MessageViewController.swift
//  TestMobile
//
//  Created by الله أكبر on 20/09/21.
//

import UIKit

class MessageViewController: UITableViewController {

    var searchController = UISearchController(searchResultsController: nil)
    
    let cellId = "cellId"
    var messageproduct : [Messageproduct]  = [Messageproduct]()
    
        override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor=Utils.dashboardcolor
//        tableView.separatorColor = .clear
        tableView.register(MessageproductCell.self, forCellReuseIdentifier: cellId)
        configureNavigationBar()
        createProductArray()
        navigationItem.searchController = searchController
        self.navigationController?.navigationBar.prefersLargeTitles = false
        searchController.searchBar.placeholder = "Search Orders"
        searchController.searchBar.frame(forAlignmentRect: CGRect(x: 12, y: 12, width: 12, height: 22))
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MessageproductCell
        let currentLastItem = messageproduct[indexPath.row]
        cell.isUserInteractionEnabled = true
        cell.Messageproduct = currentLastItem
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageproduct.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*0.1
        }
    
    func createProductArray() {
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Adam Smith", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "HR", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Roy Jones", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Justin", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Jeck", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"));messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "JH", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Maneger", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Black", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Joy", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Xeck", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Whick", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "Bill", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"));messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: #imageLiteral(resourceName: "profile") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05"))
        
 }
    
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = Utils.backGroundColor


        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Vector (1)").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Mask Copy 10").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(profile))
        
        

    }
    
    @objc func handleMenuToggle(){
        print("toggle menu..")
    }
    
    @objc func profile(){
        print(profile)
    }
    
    

 
}
