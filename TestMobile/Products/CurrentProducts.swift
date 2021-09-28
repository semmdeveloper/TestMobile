import UIKit

protocol CurrentProductCelldelegate {
    func increaseNumber(cell: CurrentProductCelldelegate,number : Int)
    func decreaseNumber(cell: CurrentProductCelldelegate,number : Int)
}

class CurrentproductCell : UITableViewCell {
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

    let btn:UIButton={
        let btn = UIButton()
        btn.frame = CGRect(x: UIScreen.main.bounds.width*0.11, y: UIScreen.main.bounds.height*0.23, width: UIScreen.main.bounds.width*0.70, height: 48)
        btn.backgroundColor = Utils.buttonColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Arrived", for: .normal)
        btn.title(for: .normal)
        btn.addTarget(self, action: #selector(buttonClicked), for: .allTouchEvents)
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
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let currentIMage: UIImageView = {
        let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        return imgView
    }()
    
    private let currentData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let currentData2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let currentName2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let currentName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    


   
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor=Utils.backGroundColor

        addSubview(customView)
        addSubview(label)
        
        customView.addSubview(currentLocation)
        customView.addSubview(currentData)
        customView.addSubview(currentData2)
        customView.addSubview(currentIMage)
        customView.addSubview(currentName)
        customView.addSubview(currentName2)

        customView.addSubview(btn)


        
        currentIMage.anchor(top: customView.topAnchor, left:  customView.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 30, paddingBottom: 220 , paddingRight: 20, width: 10, height: 10, enableInsets: false)

        currentLocation.anchor(top: customView.topAnchor, left: currentIMage.leftAnchor, bottom: customView.bottomAnchor, right: customView.rightAnchor, paddingTop: 15, paddingLeft: 50, paddingBottom: 220, paddingRight: 0, width: 1000, height: 100, enableInsets: false)

        currentData.anchor(top: customView .topAnchor, left: customView .leftAnchor, bottom: customView .bottomAnchor, right: customView .rightAnchor,  paddingTop: 10, paddingLeft: 55, paddingBottom: 35, paddingRight: 0, width: 1000, height: 100, enableInsets: false)
        
        currentData2.anchor(top: customView .topAnchor, left: customView .leftAnchor, bottom: customView .bottomAnchor, right: customView .rightAnchor,  paddingTop: 10, paddingLeft: 205, paddingBottom: 35, paddingRight: 45, width: 1000, height: 100, enableInsets: false)
        
        currentName2.anchor(top: customView .topAnchor, left: customView .leftAnchor, bottom: customView .bottomAnchor, right: customView .rightAnchor,  paddingTop: 50, paddingLeft: 205, paddingBottom: 35, paddingRight: 45, width: 1000, height: 100, enableInsets: false)

        currentName.anchor(top: customView .topAnchor, left: customView .leftAnchor, bottom: customView .bottomAnchor, right: customView .rightAnchor,  paddingTop: 50, paddingLeft: 55, paddingBottom: 35, paddingRight: 0, width: 1000, height: 100, enableInsets: false)


        
    

        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    

}
