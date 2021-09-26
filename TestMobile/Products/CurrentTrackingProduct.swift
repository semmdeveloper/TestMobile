
import UIKit

protocol CurrentTrackingProductCellDelegate {
    func increaseNumber(cell: CurrentTrackingProductCellDelegate,number : Int)
    func decreaseNumber(cell: CurrentTrackingProductCellDelegate,number : Int)
}


class CurrentTrackingproductCell : UITableViewCell {
    var delegate : CurrentTrackingProductCellDelegate?
    let minValue = 0
    var Trackingproduct : Trackingproduct? {
        didSet {
            TrackingTime.text = Trackingproduct?.trackingTime
            TrackingName.text = Trackingproduct?.trackingName
            TrackingData.text = Trackingproduct?.trackingData
            TrackingLocation.text = Trackingproduct?.trackingLoaction
            TrackingImage.image = Trackingproduct?.trackingImage
            TrackingImage2.image = Trackingproduct?.trackingImage2
            
            
         
        }
        
    }
    
    private let View :UIView = {
        let myView=UIView(frame: CGRect(x: 20 , y: 70, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.250));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=25
       return myView
        
    }()
    
    private let View2 :UIView = {
        let myView=UIView(frame: CGRect(x: 20 , y: 70, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.250));
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=25
       return myView
        
    }()
    private let TrackingLocation: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let TrackingData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let TrackingName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let TrackingTime: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let TrackingImage: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let TrackingImage2: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()


    
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         addSubview(View)
         addSubview(View2)
         addSubview(TrackingData)
         addSubview(TrackingName)
         addSubview(TrackingTime)
         addSubview(TrackingLocation)
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
