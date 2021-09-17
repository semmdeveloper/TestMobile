//
//  Password.swift
//  TestMobile
//
//  Created by الله أكبر on 16/09/21.
//

import UIKit

class Password: UIViewController {

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
        btn.setTitle("Confirm", for: .normal)
        btn.title(for: .normal)
        btn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return btn
    }()
    
    let resendbtn:UIButton={
        let resendbtn = UIButton()
        resendbtn.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.33, width: UIScreen.main.bounds.width*0.70, height: 48)
        resendbtn.setTitle("Resend again", for: .normal)
        resendbtn.setTitleColor(Utils.lblbuttonColor, for: .normal)
        resendbtn.addTarget(self, action: #selector(resendclicked), for: .touchDown)
        resendbtn.title(for: .normal)
        return resendbtn
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
    let label: UILabel={
        let label = UILabel()
        label.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.23, width: UIScreen.main.bounds.width*0.70, height: 25)
        label.text = "Verify code"
        label.textAlignment = NSTextAlignment.center
        label.textColor=Utils.verifirycodeColor
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    let dialoglabel:UILabel={
        let dialoglabel = UILabel()
        dialoglabel.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.25, width: UIScreen.main.bounds.width*0.70, height: 100)
        dialoglabel.text = "Plaese, enter the verification code                                                                  we sent to your mobile **46"
        dialoglabel.textAlignment = NSTextAlignment.center
        dialoglabel.textColor=Utils.verifirycodeColor
        dialoglabel.font = UIFont.systemFont(ofSize: 16)
        dialoglabel.numberOfLines=3
        return dialoglabel
    }()
    let alert:UIAlertController={
        let alert = UIAlertController(title: "verified!", message: "Yahoo! you have succesfully verified the account", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Next", style: .cancel, handler: nil))
        alert.view.addSubview(UIImageView(image: UIImage(named: "checked.svg")))
//        alert.view = UIImageView(frame: CGRect(x: 12, y: 12, width: 12, height: 12))
        return alert
    }()


     
    
    
    
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
        view.addSubview(label)
        view.addSubview(dialoglabel)
        view.addSubview(resendbtn)


 
    }
    
   @objc func buttonClicked() {
         print("Button Clicked")
    let height:NSLayoutConstraint = NSLayoutConstraint(item: alert.view, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.view.frame.height * 0.25)
      alert.view.addConstraint(height);
      present(alert, animated: true, completion: nil)
        self.navigationController?.pushViewController(Password(), animated: false)

    }
    @objc func infoclicked() {
          print("need help?")
         

     }
    @objc func resendclicked() {
          print("need help?")
         

     }
    

}
