
import UIKit

class Password: UIViewController {

    let emailTF :UITextField = {
        let view = UITextField()
        view.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.4, width: UIScreen.main.bounds.width*0.70, height: 48)
        view.layer.cornerRadius = 15
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        view.placeholder = "Confirm password"
        view.backgroundColor = UIColor.white
        view.tintColor = .gray
        view.textAlignment=NSTextAlignment.center
        return view
    }()
    let passwordTF :UITextField = {
        let view = UITextField()
        view.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.33, width: UIScreen.main.bounds.width*0.70, height: 48)
        view.layer.cornerRadius = 15
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        view.placeholder = "New password"
        view.backgroundColor = UIColor.white
        view.tintColor = .gray
        view.textAlignment=NSTextAlignment.center
        return view
    }()
    
    let btn:UIButton={
        let btn = UIButton()
        btn.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.48, width: UIScreen.main.bounds.width*0.70, height: 48)
        btn.backgroundColor = Utils.buttonColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Go to profile", for: .normal)
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
        self.navigationItem.setHidesBackButton(true, animated: true)
        navigationController?.navigationBar.barTintColor = Utils.backGroundColor
        view.backgroundColor = Utils.backGroundColor
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
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
    private func setUpUi(){
        view.addSubview(emailTF)
        view.addSubview(btn)
        view.addSubview(lblbtn)
        view.addSubview(passwordTF)
    }
   @objc func buttonClicked() {
         print("Button Clicked")
        
        self.navigationController?.pushViewController(Profil(), animated: false)
    }
    @objc func infoclicked() {
          print("need help?")
         

     }
    
}
