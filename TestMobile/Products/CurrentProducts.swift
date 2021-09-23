

import UIKit

protocol CurrentProductCellDelegate {
    func increaseNumber(cell: CurrentProductCellDelegate,number : Int)
    func decreaseNumber(cell: CurrentProductCellDelegate,number : Int)
}

class CurrentproductCell : UITableViewCell {
    var delegate : CurrentProductCellDelegate?
    let minValue = 0
    var Currentproduct : Currentproduct? {
        didSet {
            currentData.text = Currentproduct?.currentData
            currentIMage.image = Currentproduct?.currentImage
            currentLocation.text = Currentproduct?.currentLocation
            currentData2.text = Currentproduct?.currentData2
            currentName.text = Currentproduct?.currentName
            currentName2.text = Currentproduct?.currentName2
            
  
  
 }
}
    private var label : UILabel {
        let label=UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 122, y: 300)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "Tracking"
        return label
    }
    
    private let View :UIView = {
        let myView=UIView(frame: CGRect(x: 20 , y: 70, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.250));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=25
       return myView
        
    }()

    let btn:UIButton={
        let btn = UIButton()
        btn.frame = CGRect(x: UIScreen.main.bounds.width*0.15, y: UIScreen.main.bounds.height*0.26, width: UIScreen.main.bounds.width*0.70, height: 48)
        btn.backgroundColor = Utils.arrivedcolor
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
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location")    )
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
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
        addSubview(label)
        addSubview(View)
        addSubview(currentData)
        addSubview(currentData2)
        addSubview(currentLocation)
        addSubview(currentIMage)
        addSubview(currentName)
        addSubview(currentName2)

        addSubview(btn)


        
        currentIMage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 65, paddingBottom: 155, paddingRight: 30, width: 10, height: 10, enableInsets: false)
        
        currentLocation.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 90, paddingBottom: 155, paddingRight: 0, width: 1000, height: 100, enableInsets: false)
        
        currentData.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 10, paddingLeft: 65, paddingBottom: 35, paddingRight: 0, width: 1000, height: 100, enableInsets: false)
        
        currentData2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 10, paddingLeft: 240, paddingBottom: 35, paddingRight: 20, width: 1000, height: 100, enableInsets: false)
        
        currentName.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 20, paddingLeft: 65, paddingBottom: 0, paddingRight: 0, width: 1000, height: 100, enableInsets: false)
        
        currentName2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 20, paddingLeft: 250, paddingBottom: 0, paddingRight: 0, width: 1000, height: 100, enableInsets: false)
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    

}
