//
//  MessageViewController.swift
//  TestMobile
//
//  Created by الله أكبر on 20/09/21.
//

import UIKit

class MessageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.blue
        configureNavigationBar()
        self.navigationController?.navigationBar.prefersLargeTitles = true
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
