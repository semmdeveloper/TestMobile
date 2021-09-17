//
//  Profil.swift
//  TestMobile
//
//  Created by الله أكبر on 16/09/21.
//

import UIKit

class Profil: UIViewController {

    let label: UILabel={
        let label = UILabel()
        label.frame = CGRect(x: UIScreen.main.bounds.width*0.10, y: UIScreen.main.bounds.height*0.12, width: UIScreen.main.bounds.width*0.70, height: 25)
        label.text = "Edit profile"
        label.textAlignment = NSTextAlignment.left
        label.textColor=Utils.editprofilecolor
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()

    let profileView: UIView={
        var viewframe = UIView()
        viewframe.frame = CGRect(x: UIScreen.main.bounds.width*0.05, y: UIScreen.main.bounds.height*0.15, width: UIScreen.main.bounds.width*0.90, height: 140)
        viewframe.layer.cornerRadius = 15
        let imageView=UIImageView(image: UIImage(named: "profile.svg"))
        imageView.frame=CGRect(x: viewframe.frame.width*0.35, y: viewframe.frame.height*0.15, width: 110, height: 110)
        viewframe.addSubview(imageView)
        viewframe.backgroundColor = UIColor.white
        return viewframe
        
}()


    

    let passwordTF :UITextField = {
        let view = UITextField()
        view.frame = CGRect(x: UIScreen.main.bounds.width*0.05, y: UIScreen.main.bounds.height*0.33, width: UIScreen.main.bounds.width*0.90, height: 80)
        view.layer.cornerRadius = 15
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        view.placeholder = "FULL NAME"
        view.backgroundColor = UIColor.white
        view.tintColor = .gray
        view.textAlignment=NSTextAlignment.center
        return view
    }()
    let mailTF :UITextField = {
        let view = UITextField()
        view.frame = CGRect(x: UIScreen.main.bounds.width*0.05, y: UIScreen.main.bounds.height*0.43, width: UIScreen.main.bounds.width*0.90, height: 80)
        view.layer.cornerRadius = 15
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        view.placeholder = "YOUR EMAIL"
        view.backgroundColor = UIColor.white
        view.tintColor = .gray
        view.textAlignment=NSTextAlignment.center
        return view
    }()
    let numberTF :UITextField = {
        let view = UITextField()
        view.frame = CGRect(x: UIScreen.main.bounds.width*0.05, y: UIScreen.main.bounds.height*0.53, width: UIScreen.main.bounds.width*0.90, height: 80)
        view.layer.cornerRadius = 15
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        view.placeholder = "YOUR EMAIL"
        view.backgroundColor = UIColor.white
        view.tintColor = .gray
        view.textAlignment=NSTextAlignment.center
        return view
    }()
    
    let btn:UIButton={
        let btn = UIButton()
        btn.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.65, width: UIScreen.main.bounds.width*0.70, height: 48)
        btn.backgroundColor = Utils.buttonColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Go to dashboard", for: .normal)
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
    let imagebtn:UIButton={
        let imagebtn = UIButton()
        let imageView=UIImageView(image: UIImage(named: "vec.svg"))
        imagebtn.frame=CGRect(x: imageView.frame.width*15, y: 255, width: 120, height: 500)
        imagebtn.addSubview(imageView)
        imagebtn.setTitleColor(Utils.lblbuttonColor, for: .normal)
        imagebtn.addTarget(self, action: #selector(editclicked), for: .touchDown)
        return imagebtn
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()
        navigationController?.navigationBar.barTintColor = Utils.backGroundColor
        view.backgroundColor = Utils.backGroundColor
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    private func setUpUi(){
//        view.addSubview(emailTF)
        view.addSubview(btn)
        view.addSubview(lblbtn)
        view.addSubview(passwordTF)
        view.addSubview(label)
        view.addSubview(profileView)
        view.addSubview(mailTF)
        view.addSubview(numberTF)
        view.addSubview(imagebtn)

        


    }
   @objc func buttonClicked() {
         print("Button Clicked")
        
        self.navigationController?.pushViewController(Profil(), animated: false)
    }
    @objc func infoclicked() {
          print("need help?")
         

     }
    
    @objc func editclicked(){
        print("Button Clicked")
    }

}
