//
//  CustomLable.swift
//  TestMobile
//
//  Created by الله أكبر on 16/09/21.
//

import UIKit
class Vertification: UIViewController {
    let emailTF :UITextField = {
        let view = UITextField()
        view.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.4, width: UIScreen.main.bounds.width*0.70, height: 48)
        view.layer.cornerRadius = 15
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        view.placeholder = "Email or Phone number"
        view.backgroundColor = UIColor.white
        view.tintColor = .gray
        view.textAlignment=NSTextAlignment.center
        return view
    }()
    
    let btn:UIButton={
        let btn = UIButton()
        btn.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.47, width: UIScreen.main.bounds.width*0.70, height: 48)
        btn.backgroundColor = Utils.buttonColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Get verification", for: .normal)
        btn.title(for: .normal)
        btn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return btn
    }()
    
    let lblbtn:UIButton={
        let lblbtn = UIButton()
        lblbtn.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.80, width: UIScreen.main.bounds.width*0.70, height: 48)
        lblbtn.setTitle("Need Help?", for: .normal)
        lblbtn.setTitleColor(Utils.lblbuttonColor, for: .normal)
        lblbtn.addTarget(self, action: #selector(infoclicked), for: .touchDown)
        lblbtn.title(for: .normal)
        return lblbtn
    }()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()
        navigationController?.navigationBar.barTintColor = Utils.backGroundColor
        view.backgroundColor = Utils.backGroundColor
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    private func setUpUi(){
        view.addSubview(emailTF)
        view.addSubview(btn)
        view.addSubview(lblbtn)
    }
   @objc func buttonClicked() {
         print("Button Clicked")
        
        self.navigationController?.pushViewController(Password(), animated: false)
    }
    @objc func infoclicked() {
          print("need help?")
         

     }
    
}

