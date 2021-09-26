



import UIKit

protocol TrackingProductCellDelegate {
    func increaseNumber(cell: TrackingProductCellDelegate,number : Int)
    func decreaseNumber(cell: TrackingProductCellDelegate,number : Int)
}

class TrackingproductCell : UITableViewCell {
    var delegate : TrackingProductCellDelegate?
    let minValue = 0
    var Currentproduct : Currentproduct? {
        didSet {
   
            currentData.text = Currentproduct?.currentData
            currentIMage.image = Currentproduct?.currentImage
            currentLocation.text = Currentproduct?.currentLocation
            currentName.text = Currentproduct?.currentName
            trackingTime.text = Currentproduct?.trackingtTime
            trackingImage2.image = Currentproduct?.trackingImage2
            
            
  
  
 }
}
    

    private let View2 :UIView = {
        let myView=UIView(frame: CGRect(x: 20, y: 1, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.100));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=15
       return myView
        
    }()
    private let View3 :UIView = {
        let myView=UIView(frame: CGRect(x: 33, y: 25, width: 70, height: 70));
        myView.backgroundColor = Utils.trackingColor
        myView.layer.cornerRadius=15
       return myView
        
    }()
    
    private let View4 :UIView = {
        let myView=UIView(frame: CGRect(x: 270, y: UIScreen.main.bounds.width*0.14, width: 8, height: 8));
        myView.backgroundColor = UIColor.systemGreen
        myView.layer.cornerRadius=4
       return myView
        
    }()


    private let currentLocation: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
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
    
    private let trackingImage2: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location")    )
        imgView.contentMode = .scaleAspectFit
        imgView.frame = CGRect(x: 57, y: 50, width: 20, height: 20)
        imgView.clipsToBounds = true
        return imgView
    }()
    
    
    private let currentData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    private let currentName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let trackingTime: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGreen
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    


   
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor=Utils.backGroundColor
        addSubview(View2)
        addSubview(View3)
        addSubview(View4)
        addSubview(currentName)
        addSubview(trackingTime)
        addSubview(currentData)
        addSubview(currentLocation)
        addSubview(currentIMage)
        addSubview(trackingImage2)


        currentLocation.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 120, paddingBottom: 60, paddingRight: 30, width: 30, height: 30, enableInsets: false)
        
        currentName.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 120, paddingBottom: 10, paddingRight: 30, width: 30, height: 30, enableInsets: false)
        
        trackingTime.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 290, paddingBottom: 14, paddingRight: 30, width: 30, height: 30, enableInsets: false)

        
        currentData.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 60, paddingLeft: 120, paddingBottom: 10, paddingRight: 30, width: 30, height: 30, enableInsets: false)
        
        
        View2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 10, paddingRight: 20, width: 0, height: 10, enableInsets: false)
        
        
      

  

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    

}
