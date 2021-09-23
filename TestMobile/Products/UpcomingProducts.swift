


import UIKit

protocol UpcomingProductCellDelegate {
    func increaseNumber(cell: UpcomingProductCellDelegate,number : Int)
    func decreaseNumber(cell: UpcomingProductCellDelegate,number : Int)
}

class UpcomingproductCell : UITableViewCell {
    var delegate : UpcomingProductCellDelegate?
    let minValue = 0
    var Upcomingproduct : Upcomingproduct? {
        didSet {
            upcomingImage3.image = Upcomingproduct?.upcomingImage3
            upcomingImage2.image = Upcomingproduct?.upcomingImage2
            upcomingImage.image = Upcomingproduct?.upcomingImage
            upcomingLine.image = Upcomingproduct?.upcomingLine
            upcomingData2.text = Upcomingproduct?.upcomingData2
            upcomingData.text = Upcomingproduct?.upcomingData
            upcomingName.text = Upcomingproduct?.upcomingName
            upcomingName2.text = Upcomingproduct?.upcomingName2
            upcomingNumber.text = Upcomingproduct?.upcomingNumber
            upcomingNumber2.text = Upcomingproduct?.upcomingNumber2
            upcomingPoint.image = Upcomingproduct?.upcomingPoint
            upcomingPoint2.image = Upcomingproduct?.upcomingPoint2
            upcomingLocation.text = Upcomingproduct?.upcomingLocation
            upcomingLocation2.text = Upcomingproduct?.upcomingLocation

 }
}
    private var label : UILabel {
        let label=UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 122, y: 70)
        label.text = "Monday, September 27"
        return label
    }
    
    
    private let View :UIView = {
        let myView=UIView(frame: CGRect(x: 15 , y: 100, width: 343, height: UIScreen.main.bounds.height*0.18));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
       return myView

    }()
    private let View2 :UIView = {
        let myView=UIView(frame: CGRect(x: 40 , y: 130, width: 25, height: 25));
        myView.backgroundColor = Utils.numberColor
        myView.layer.cornerRadius=13
       return myView

    }()
    private let View3 :UIView = {
        let myView=UIView(frame: CGRect(x: 40 , y: 190, width: 25, height: 25));
        myView.backgroundColor = Utils.numberColor
        myView.layer.cornerRadius=13
       return myView

    }()
    private let View4 :UIView = {
        let myView=UIView(frame: CGRect(x: 300 , y: 155, width: 40, height: 40));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=20
       return myView

    }()
    private let upcomingNumber: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingNumber2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
        private let upcomingName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingName2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 8)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingData2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 8)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingPoint: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let upcomingPoint2: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let upcomingLocation: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingLocation2: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let upcomingLine: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let upcomingImage: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let upcomingImage2: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let upcomingImage3: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    
    
    
    
    
    
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         backgroundColor = Utils.dashboardcolor
           addSubview(label)
           addSubview(View)
         addSubview(View2)
         addSubview(View3)
         addSubview(View4)
         addSubview(upcomingData)
         addSubview(upcomingData2)
         addSubview(upcomingLocation)
         addSubview(upcomingLocation2)
         addSubview(upcomingPoint)
         addSubview(upcomingPoint2)
         addSubview(upcomingNumber)
         addSubview(upcomingNumber2)
         addSubview(upcomingName)
         addSubview(upcomingName2)
         addSubview(upcomingLine)
         addSubview(upcomingImage)
         addSubview(upcomingImage2)
         addSubview(upcomingImage3)
         
         
         upcomingNumber.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 40, paddingLeft: 50, paddingBottom: 0, paddingRight: 0, width: 0, height: 10, enableInsets: false)
         
         upcomingNumber2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 158, paddingLeft: 48, paddingBottom: 0, paddingRight: 0, width: 0, height: 10, enableInsets: false)
         
         upcomingLine.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 101, paddingLeft: 51, paddingBottom: 0, paddingRight: 0, width: 0, height: 20, enableInsets: false)
         
         upcomingName.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 40, paddingLeft: 85, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingName2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 158, paddingLeft: 85, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingData.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 75, paddingLeft: 100, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingData2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 195, paddingLeft: 100, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingImage3.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 75, paddingLeft: 85, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingImage2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 195, paddingLeft: 85, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingPoint.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 40, paddingLeft: 130, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingPoint2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 160, paddingLeft: 130, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingLocation.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 40, paddingLeft: 150, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingLocation2.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil,paddingTop: 160, paddingLeft: 150, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
         upcomingImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 102, paddingLeft: 313, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
         
//         
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
