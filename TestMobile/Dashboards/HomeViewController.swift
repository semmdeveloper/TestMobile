

import UIKit

class HomeViewController: UITableViewController{
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @objc let currentVC = CurrentViewController()
    @objc let upcomingVC = UpcomingViewController()
    @objc let completedVC = CompletedViewController()
    
    
    
    override func viewDidLoad() {
      super.viewDidLoad()
        view.backgroundColor=Utils.dashboardcolor
        setup()
        configureNavigationBar()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        addControl()
        tableView.separatorColor = .clear
        
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
    
    private func setup(){

        
        addChild(currentVC)
        addChild(upcomingVC)
        addChild(completedVC)
        
      
        
        self.view.addSubview(currentVC.view)
        self.view.addSubview(upcomingVC.view)
        self.view.addSubview(completedVC.view)
        
        currentVC.didMove(toParent: self)
        upcomingVC.didMove(toParent: self)
        completedVC.didMove(toParent: self)
        
        
        currentVC.view.frame = self.view.bounds
        upcomingVC.view.frame = self.view.bounds
        completedVC.view.frame = self.view.bounds
        upcomingVC.view.isHidden = true
        completedVC.view.isHidden = true
        currentVC.view.isHidden = false
   
    }
     @objc func didtapSegment(segment: UISegmentedControl){
        currentVC.view.isHidden = true
        upcomingVC.view.isHidden = true
        completedVC.view.isHidden = true
        
        
        print("working")
        if segment.selectedSegmentIndex == 0{
            currentVC.view.isHidden = false
            print("working")
        }
        if segment.selectedSegmentIndex == 1{
            upcomingVC.view.isHidden = false
            print("working")
        }
       
        if segment.selectedSegmentIndex == 2{
            completedVC.view.isHidden = false
            print("working")
        }
       
       
        
        
    }
    
    
    
 
    
    func addControl() {
       let segmentItems = ["Current", "Upcoming", "Completed"]
       let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x: 355, y: 0.2, width: (self.view.frame.width - 335), height: 50)
        
        control.addTarget(self, action: #selector(didtapSegment(segment:)), for: .valueChanged)
        control.addTarget(self, action: #selector(didtapSegment(segment:)), for: .touchUpInside)
        control.layer.cornerRadius = 15
       control.selectedSegmentIndex = 0
       view.addSubview(control)
        
    }
 

    
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = Utils.dashboardcolor


        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Vector (1)").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
        var view = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        view.backgroundColor = Utils.navbarColor
        let barButtonItem = UIBarButtonItem(customView: view)
        self.navigationItem.rightBarButtonItem = barButtonItem
        view.layer.cornerRadius = 20
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 13, height: 17))
        let titleImageView = UIImageView(image: UIImage(named: "Shap"))
        titleImageView.frame = CGRect(x: 151, y: 0, width: titleView.frame.width, height: titleView.frame.height)
         titleView.addSubview(titleImageView)
         navigationItem.titleView = titleView
        
      
        
        
        
        


    }
    @objc func handleMenuToggle(){
        print("toggle menu..")
    }
    
    
    
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    
    

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false )
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*1
    }
    


    
    
    

  
    

}
