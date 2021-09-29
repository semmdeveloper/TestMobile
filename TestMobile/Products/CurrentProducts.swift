import UIKit

protocol CurrentProductCelldelegate {
    func increaseNumber(cell: CurrentProductCelldelegate,number : Int)
    func decreaseNumber(cell: CurrentProductCelldelegate,number : Int)
}

class CurrentproductCell : UITableViewCell, UIViewControllerTransitioningDelegate {
    var delegate : CurrentProductCelldelegate?
    let minValue = 0
    var currentproduct : Currentproduct? {
        didSet {
            currentData.text = currentproduct?.currentData
            currentIMage.image = currentproduct?.currentImage
            currentLocation.text = currentproduct?.currentLocation
            currentData2.text = currentproduct?.currentData2
            currentName.text = currentproduct?.currentName
            currentName2.text = currentproduct?.currentName2
          
  
  
 }
}
    private var label : UILabel {
        let label=UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 122, y: UIScreen.main.bounds.height*0.4500)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "Tracking"
        return label
    }
    

    
    private let customView :UIView = {
        let myView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.05 , y: 60, width: UIScreen.main.bounds.width*0.90, height: UIScreen.main.bounds.height*0.3300));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=25
        return myView
    }()
    

    
    
    private let customView2 :UIView = {
        let myView = UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=0
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
    private let customView3 :UIView = {
        let myView = UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=0
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()

   private let btn : UIButton={
        let btn = UIButton()
        btn.frame = CGRect(x: UIScreen.main.bounds.width*0.11, y: UIScreen.main.bounds.height*0.23, width: UIScreen.main.bounds.width*0.70, height: 48)
        btn.backgroundColor = Utils.buttonColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Arrived", for: .normal)
        btn.title(for: .normal)
        btn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return btn
    }()
    @objc func buttonClicked() {
          print("Button Clicked")
  
        
         
         
     }
    
    private let currentLocation: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let currentIMage: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    private let currentData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    private let currentData2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    private let currentName2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    private let currentName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    


   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor=Utils.backGroundColor

        addSubview(customView)
        addSubview(label)
        customView.addSubview(customView2)
        customView.addSubview(customView3)
        customView2.addSubview(currentLocation)
        customView3.addSubview(currentData)
        customView3.addSubview(currentData2)
        customView2.addSubview(currentIMage)
        customView3.addSubview(currentName)
        customView3.addSubview(currentName2)
        customView.addSubview(btn)
    
//        MARK: - CustomView2
        
        customView2.centerXAnchor.constraint(equalTo: customView.centerXAnchor).isActive = true
        customView2.topAnchor.constraint(equalTo: customView.topAnchor, constant: 10).isActive = true
        customView2.widthAnchor.constraint(equalToConstant: customView.bounds.width*0.8).isActive = true
        customView2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
//        MARK: - CurrentImageView
        
        currentIMage.centerYAnchor.constraint(equalTo: customView2.centerYAnchor).isActive = true
        currentIMage.leftAnchor.constraint(equalTo: customView2.leftAnchor, constant: 10).isActive = true
        currentIMage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        currentIMage.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
//        MARK: - CurrentLocation
        
        currentLocation.centerYAnchor.constraint(equalTo: customView2.centerYAnchor).isActive = true
        currentLocation.leftAnchor.constraint(equalTo: currentIMage.rightAnchor, constant: 10).isActive = true
        
//        MARK: - CustomView3
                       
        customView3.centerXAnchor.constraint(equalTo: customView.centerXAnchor).isActive = true
        customView3.topAnchor.constraint(equalTo: customView2.topAnchor, constant: 80).isActive = true
        customView3.widthAnchor.constraint(equalToConstant: customView.bounds.width*0.8).isActive = true
        customView3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
//        MARK: - CurrentData
        currentData.topAnchor.constraint(equalTo: customView3.topAnchor, constant: 5).isActive = true
        currentData.leftAnchor.constraint(equalTo: customView3.leftAnchor, constant: 10).isActive = true
        
//        MARK: - CurrentName
        currentName.topAnchor.constraint(equalTo: customView3.topAnchor, constant: 25).isActive = true
        currentName.leftAnchor.constraint(equalTo: customView3.leftAnchor, constant: 10).isActive = true
        
//        MARK: - CurrentData2
        currentData2.topAnchor.constraint(equalTo: customView3.topAnchor, constant: 5).isActive = true
        currentData2.rightAnchor.constraint(equalTo: customView3.rightAnchor, constant: -10).isActive = true
        
//        MARK: - CurrentName2
        currentName2.topAnchor.constraint(equalTo: customView3.topAnchor, constant: 25).isActive = true
        currentName2.rightAnchor.constraint(equalTo: customView3.rightAnchor, constant: -10).isActive = true
     
   
    }
    @objc func detailView() {
          print("Button Clicked")
         
         
     }
    
  
       
   
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    

}
