
import UIKit

class MessageViewController: UITableViewController {

    var searchController = UISearchController(searchResultsController: nil)
    
    let cellId = "cellId"
    var messageproduct : [Messageproduct]  = [Messageproduct]()
    
        override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor=Utils.dashboardcolor
//        tableView.separatorColor = .clear
//        tableView.register(MessageproductCell.self, forCellReuseIdentifier: cellId)
        configureNavigationBar()
        createProductArray()
        navigationItem.searchController = searchController
        self.navigationController?.navigationBar.prefersLargeTitles = false
        searchController.searchBar.placeholder = "Search Orders"
        searchController.searchBar.frame(forAlignmentRect: CGRect(x: 12, y: 12, width: 12, height: 22))
            
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
        if(indexPath.row==0){
            
            tableView.register(MessageLiveChatProductCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MessageLiveChatProductCell
            let currentLastItem = messageproduct[indexPath.row]
            cell.isUserInteractionEnabled = true
            cell.Messageproduct = currentLastItem
            return cell
        }else{
            
            tableView.register(MessagechatproductCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MessagechatproductCell
            
            let currentLastItem = messageproduct[indexPath.row]
            cell.isUserInteractionEnabled = true
            cell.Messageproduct = currentLastItem
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
        return messageproduct.count
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row==0){
            return UIScreen.main.bounds.height*0.1800
            
        }else{
            return UIScreen.main.bounds.height*0.1
        }
    }
    
    func createProductArray() {
        messageproduct.append(Messageproduct(messageName: "Live chat", messageImage: #imageLiteral(resourceName: "heart") , messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:05", messageChats: "Chats"))
        
        messageproduct.append(Messageproduct(messageName: "John Karter", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: " Karter", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Hohn ", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Harry Potter", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Semina", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Love", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Jeck", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Jimmy", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Kasper", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Inna", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        
        messageproduct.append(Messageproduct(messageName: "Shakira", messageImage: UIImage(), messageInfo: "Стартап IT Park «Micros24» $120 000!", messageTime: "13:20", messageChats: ""))
        

        

        
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
