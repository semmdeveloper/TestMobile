//
//  TrustViewController.swift
//  TestMobile
//
//  Created by الله أكبر on 20/09/21.
//

import UIKit

class TripsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        view.backgroundColor=Utils.dashboardcolor
        self.navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(textLabel)
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
   
    }
    
    private let textLabel : UILabel = {
        let textLabel = UILabel()
        textLabel.text = "Trips loading..."
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
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
