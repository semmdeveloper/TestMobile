//
//  CompletedViewController.swift
//  TestMobile
//
//  Created by الله أكبر on 20/09/21.
//

import UIKit

class CompletedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=Utils.dashboardcolor
        view.addSubview(textLabel)
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    private let textLabel : UILabel = {
        let textLabel = UILabel()
        textLabel.text = "Complated loading..."
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    
    



}
