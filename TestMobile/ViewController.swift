
import UIKit

class ViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarControllers()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        UITabBar.appearance().backgroundColor = UIColor.white
        
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
    func setTabBarControllers() {
        self.setViewControllers([HomeViewController(), MessageViewController(), TripsViewController(), ProfileViewController()].map{
            UINavigationController(rootViewController: $0)
        }, animated: true)
        view.backgroundColor = UIColor.white
        tabBar.items?[0].image=UIImage(named: "Vector 1.svg")
        tabBar.items?[0].title="Home"
        
        tabBar.items?[1].image=UIImage(named: "Vector 2.svg")
        tabBar.items?[1].title="Messages"
        tabBar.items?[2].image=UIImage(named: "Vector 4.svg")
        tabBar.items?[2].title="Trips"
        tabBar.items?[3].image=UIImage(named: "Vector 3.png")
        tabBar.items?[3].title="Profil"
        
        
    }

}

