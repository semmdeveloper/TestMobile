



import UIKit

protocol TrackingProductCellDelegate {
    func increaseNumber(cell: TrackingProductCellDelegate,number : Int)
    func decreaseNumber(cell: TrackingProductCellDelegate,number : Int)
}

class TrackingproductCell : UITableViewCell {
    var delegate : TrackingProductCellDelegate?
    let minValue = 0
    var currentproduct : Currentproduct? {
        didSet {
   
            currentData.text = currentproduct?.currentData
            currentIMage.image = currentproduct?.currentImage
            currentLocation.text = currentproduct?.currentLocation
            currentName.text = currentproduct?.currentName
            trackingTime.text = currentproduct?.trackingtTime
            trackingImage2.image = currentproduct?.trackingImage2
            
            
  
  
 }
}
    

    private let View2 :UIView = {
        let myView=UIView(frame: CGRect(x: 20, y: 1, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.100));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=15
       return myView
        
    }()
    private let View3 :UIView = {
        let myView=UIView(frame: CGRect(x: UIScreen.main.bounds.width*0, y: UIScreen.main.bounds.height*0, width: 0, height: 0));
        myView.backgroundColor = Utils.trackingColor
        myView.layer.cornerRadius=15
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
        View2.addSubview(View3)
        View2.addSubview(currentName)
        View2.addSubview(trackingTime)
        View2.addSubview(currentData)
        View2.addSubview(currentLocation)
        View2.addSubview(currentIMage)
        View2.addSubview(trackingImage2)


        currentLocation.anchor(top: View2.topAnchor, left: View3.leftAnchor, bottom: View2.bottomAnchor, right: View2.rightAnchor, paddingTop: 10, paddingLeft: 100, paddingBottom: 60, paddingRight: 0, width: 30, height: 30, enableInsets: false)
        
        currentName.anchor(top: View2.topAnchor, left: View3.leftAnchor, bottom: View2.bottomAnchor, right: View2.rightAnchor, paddingTop: 10, paddingLeft: 100, paddingBottom: 10, paddingRight: 0, width: 30, height: 30, enableInsets: false)
        
        trackingTime.anchor(top: View2.topAnchor, left: currentName.leftAnchor, bottom: View2.bottomAnchor, right: View2.rightAnchor, paddingTop: 8, paddingLeft: 150, paddingBottom: 13, paddingRight: 15, width: 0, height: 0, enableInsets: false)

        
        currentData.anchor(top: View2.topAnchor, left: View3.leftAnchor, bottom: View2.bottomAnchor, right: View2.rightAnchor, paddingTop: 60, paddingLeft: 100, paddingBottom: 10, paddingRight: 30, width: 30, height: 30, enableInsets: false)

        
        View2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 10, paddingRight: 20, width: 0, height: 10, enableInsets: false)
        
        trackingImage2.anchor(top: View3.topAnchor, left: View3.leftAnchor, bottom: View3.bottomAnchor, right: View3.rightAnchor, paddingTop: 25, paddingLeft: 25, paddingBottom: 25, paddingRight: 25, width: 0, height: 0, enableInsets: false)
        
        View3.anchor(top: View2.topAnchor, left: View2.leftAnchor, bottom: View2.bottomAnchor, right: currentName.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: UIScreen.main.bounds.width*0.7, width: 0, height: 0, enableInsets: false)
        
     
     
      

  

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    

}
