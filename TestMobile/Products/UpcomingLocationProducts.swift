


import UIKit

protocol UpcomingLocationProductCellDelegate {
    func increaseNumber(cell: UpcomingLocationProductCellDelegate,number : Int)
    func decreaseNumber(cell: UpcomingLocationProductCellDelegate,number : Int)
}

class UpcominglocationproductCell : UITableViewCell {
    var delegate : UpcomingLocationProductCellDelegate?
    let minValue = 0
    var Upcomingproduct : Upcomingproduct? {
        didSet {
            upcomingImageThree.image = Upcomingproduct?.upcomingImageThree
            upcomingImageTwoo.image = Upcomingproduct?.upcomingImageTwoo
            upcomingImage.image = Upcomingproduct?.upcomingImage
             upcomingDataTwoo.text = Upcomingproduct?.upcomingDataTwoo
            upcomingData.text = Upcomingproduct?.upcomingData
            upcomingName.text = Upcomingproduct?.upcomingName
            upcomingNameTwoo.text = Upcomingproduct?.upcomingNametwoo
            upcomingNumber.text = Upcomingproduct?.upcomingNumber
            upcomingNumberTwoo.text = Upcomingproduct?.upcomingNumberTwoo
            upcomingLocation.text = Upcomingproduct?.upcomingLocation
            upcomingLocationTwoo.text = Upcomingproduct?.upcomingLocationTwoo

 }
}

    
    
    private let upcomingView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    private let numberView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    private let pointOneView :UIView = {
        let myView=UIView();
        myView.backgroundColor = Utils.numberColor
        myView.layer.cornerRadius=9
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    private let pointTwooView:UIView = {
        let myView=UIView();
        myView.backgroundColor = Utils.numberColor
        myView.layer.cornerRadius=9
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    private let lineView :UIView = {
        let myView=UIView();
        myView.backgroundColor = Utils.numberColor
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    private let locationView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    private let dataView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    private let dataViewTwoo :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    
    
    private let locationViewTwoo :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    private let OtherView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=10
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    private let pointThreeView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.black
        myView.layer.cornerRadius=4
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    
    private let pointFourView :UIView = {
        let myView=UIView();
        myView.backgroundColor = UIColor.black
        myView.layer.cornerRadius=4
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView

    }()
    private let upcomingNumber: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    private let upcomingNumberTwoo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
        private let upcomingName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 15)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
            lbl.translatesAutoresizingMaskIntoConstraints = false
            lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    private let upcomingNameTwoo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 15)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    private let upcomingData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 9)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    private let upcomingDataTwoo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 9)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()

    private let upcomingLocation: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 14)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    private let upcomingLocationTwoo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.boldSystemFont(ofSize: 14)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()

    private let upcomingImage: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    private let upcomingImageTwoo: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    private let upcomingImageThree: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    
    
    
    
    
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         backgroundColor = Utils.dashboardcolor
           addSubview(upcomingView)
         upcomingView.addSubview(numberView)
         numberView.addSubview(pointOneView)
         numberView.addSubview(pointTwooView)
         numberView.addSubview(lineView)
         upcomingView.addSubview(locationView)
         locationView.addSubview(pointThreeView)
         pointOneView.addSubview(upcomingNumber)
         pointTwooView.addSubview(upcomingNumberTwoo)
         locationView.addSubview(upcomingName)
         locationView.addSubview(upcomingLocation)
         upcomingView.addSubview(locationViewTwoo)
         locationViewTwoo.addSubview(upcomingNameTwoo)
         locationViewTwoo.addSubview(pointFourView)
         locationViewTwoo.addSubview(upcomingLocationTwoo)
         upcomingView.addSubview(dataView)
         upcomingView.addSubview(dataViewTwoo)
         dataView.addSubview(upcomingImageTwoo)
         dataViewTwoo.addSubview(upcomingImageThree)
         dataView.addSubview(upcomingData)
         dataViewTwoo.addSubview(upcomingDataTwoo)
         upcomingView.addSubview(OtherView)
         OtherView.addSubview(upcomingImage)

         
//         MARK:  - upcomingViews
         upcomingView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
         upcomingView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15).isActive = true
         upcomingView.widthAnchor.constraint(equalToConstant: bounds.width*2).isActive = true
         upcomingView.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
         upcomingView.heightAnchor.constraint(equalToConstant: 150).isActive = true
         
         numberView.leftAnchor.constraint(equalTo: upcomingView.leftAnchor, constant: 15).isActive = true
         numberView.widthAnchor.constraint(equalToConstant: 30).isActive = true
         numberView.bottomAnchor.constraint(equalTo: upcomingView.bottomAnchor,constant: -20).isActive = true
         numberView.topAnchor.constraint(equalTo: upcomingView.topAnchor, constant: 20).isActive = true
         numberView.heightAnchor.constraint(equalToConstant: 120).isActive = true
         
         pointOneView.widthAnchor.constraint(equalToConstant: 20).isActive = true
         pointOneView.heightAnchor.constraint(equalToConstant: 20).isActive = true
         pointOneView.centerXAnchor.constraint(equalTo: numberView.centerXAnchor).isActive = true
         pointOneView.topAnchor.constraint(equalTo: numberView.topAnchor, constant: 10).isActive = true
         
         pointTwooView.widthAnchor.constraint(equalToConstant: 20).isActive = true
         pointTwooView.heightAnchor.constraint(equalToConstant: 20).isActive = true
         pointTwooView.centerXAnchor.constraint(equalTo: numberView.centerXAnchor).isActive = true
         pointTwooView.bottomAnchor.constraint(equalTo: numberView.bottomAnchor, constant: -15).isActive = true
         
         lineView.widthAnchor.constraint(equalToConstant: 2).isActive = true
         lineView.heightAnchor.constraint(equalToConstant: 64).isActive = true
         lineView.topAnchor.constraint(equalTo: pointOneView.topAnchor, constant: 10).isActive = true
         lineView.centerXAnchor.constraint(equalTo: numberView.centerXAnchor).isActive = true
         
         locationView.widthAnchor.constraint(equalToConstant: bounds.width*0.7).isActive = true
         locationView.heightAnchor.constraint(equalToConstant: 40).isActive = true
         locationView.leftAnchor.constraint(equalTo: numberView.rightAnchor, constant: 20).isActive = true
         locationView.topAnchor.constraint(equalTo: upcomingView.topAnchor, constant: 20).isActive = true
         
         locationViewTwoo.widthAnchor.constraint(equalToConstant: bounds.width*0.7).isActive = true
         locationViewTwoo.heightAnchor.constraint(equalToConstant: 40).isActive = true
         locationViewTwoo.leftAnchor.constraint(equalTo: numberView.rightAnchor, constant: 20).isActive = true
         locationViewTwoo.bottomAnchor.constraint(equalTo: upcomingView.bottomAnchor, constant: -20).isActive = true
         
         dataView.widthAnchor.constraint(equalToConstant: bounds.width*0.4).isActive = true
         dataView.heightAnchor.constraint(equalToConstant: 20).isActive = true
         dataView.topAnchor.constraint(equalTo: locationView.bottomAnchor).isActive = true
         dataView.leftAnchor.constraint(equalTo: numberView.rightAnchor,constant: 20).isActive = true
         
         dataViewTwoo.widthAnchor.constraint(equalToConstant: bounds.width*0.4).isActive = true
         dataViewTwoo.heightAnchor.constraint(equalToConstant: 20).isActive = true
         dataViewTwoo.topAnchor.constraint(equalTo: locationViewTwoo.bottomAnchor).isActive = true
         dataViewTwoo.leftAnchor.constraint(equalTo: numberView.rightAnchor,constant: 20).isActive = true
         
         pointThreeView.leftAnchor.constraint(equalTo: upcomingName.rightAnchor, constant: 15).isActive = true
         pointThreeView.widthAnchor.constraint(equalToConstant: 8).isActive = true
         pointThreeView.heightAnchor.constraint(equalToConstant: 8).isActive = true
         pointThreeView.centerYAnchor.constraint(equalTo: locationView.centerYAnchor).isActive = true
         
         pointFourView.leftAnchor.constraint(equalTo: upcomingNameTwoo.rightAnchor, constant: 15).isActive = true
         pointFourView.widthAnchor.constraint(equalToConstant: 8).isActive = true
         pointFourView.heightAnchor.constraint(equalToConstant: 8).isActive = true
         pointFourView.centerYAnchor.constraint(equalTo: locationViewTwoo.centerYAnchor).isActive = true
         
         OtherView.widthAnchor.constraint(equalToConstant: bounds.width*0.1).isActive = true
         OtherView.heightAnchor.constraint(equalToConstant: 40).isActive = true
         OtherView.rightAnchor.constraint(equalTo: upcomingView.rightAnchor, constant: -15).isActive = true
         OtherView.centerYAnchor.constraint(equalTo: upcomingView.centerYAnchor).isActive = true
         
//         MARK: - Numbers
         
         upcomingNumber.centerXAnchor.constraint(equalTo: pointOneView.centerXAnchor).isActive = true
         upcomingNumber.centerYAnchor.constraint(equalTo: pointOneView.centerYAnchor).isActive = true
         
         upcomingNumberTwoo.centerXAnchor.constraint(equalTo: pointTwooView.centerXAnchor).isActive = true
         upcomingNumberTwoo.centerYAnchor.constraint(equalTo: pointTwooView.centerYAnchor).isActive = true
         
//         MARK: - Name
         
         upcomingName.centerYAnchor.constraint(equalTo: locationView.centerYAnchor).isActive = true
         upcomingNameTwoo.centerYAnchor.constraint(equalTo: locationViewTwoo.centerYAnchor).isActive = true
        
         
//         MARK: - LocationLabel
         
         upcomingLocation.centerYAnchor.constraint(equalTo: locationView.centerYAnchor).isActive = true
         upcomingLocation.leftAnchor.constraint(equalTo: pointThreeView.rightAnchor, constant: 15).isActive = true
         
         upcomingLocationTwoo.centerYAnchor.constraint(equalTo: locationViewTwoo.centerYAnchor).isActive = true
         upcomingLocationTwoo.leftAnchor.constraint(equalTo: pointFourView.rightAnchor, constant: 15).isActive = true
         
//         MARK: - ImageView
         
         upcomingImageTwoo.centerYAnchor.constraint(equalTo: dataView.centerYAnchor).isActive = true
         upcomingImageThree.centerYAnchor.constraint(equalTo: dataViewTwoo.centerYAnchor).isActive = true
         
         upcomingImage.centerYAnchor.constraint(equalTo: OtherView.centerYAnchor).isActive = true
         upcomingImage.centerXAnchor.constraint(equalTo: OtherView.centerXAnchor).isActive = true
         
         
         
//         MARK: - Data
         
         upcomingData.centerYAnchor.constraint(equalTo: dataView.centerYAnchor).isActive = true
         upcomingData.leftAnchor.constraint(equalTo: upcomingImageTwoo.rightAnchor,constant: 15).isActive = true
         upcomingDataTwoo.centerYAnchor.constraint(equalTo: dataViewTwoo.centerYAnchor).isActive = true
         upcomingDataTwoo.leftAnchor.constraint(equalTo: upcomingImageThree.rightAnchor,constant: 15).isActive = true


         


         
         
         
         
         
         
         
         
         

    
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
