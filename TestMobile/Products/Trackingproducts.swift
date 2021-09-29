



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
        let myView=UIView()
        myView.backgroundColor = Utils.homeColor2
        myView.layer.cornerRadius=15
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
    private let View4 :UIView = {
        let myView=UIView()
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=0
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
    private let View5 :UIView = {
        let myView=UIView()
        myView.backgroundColor = UIColor.white
        myView.layer.cornerRadius=0
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
    private let View6 :UIView = {
        let myView=UIView()
        myView.backgroundColor = UIColor.green
        myView.layer.cornerRadius=3
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
    private let currentLocation: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    private let trackingImage2: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location")    )
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    
    private let currentData: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    
    private let currentName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    private let trackingTime: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGreen
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    


   
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor=Utils.backGroundColor
        addSubview(View2)
        View2.addSubview(View3)
        View2.addSubview(View4)
        View2.addSubview(View5)
        View5.addSubview(View6)
        View4.addSubview(currentName)
        View5.addSubview(trackingTime)
        View4.addSubview(currentData)
        View4.addSubview(currentLocation)
        View3.addSubview(trackingImage2)
        
//        MARK: - UIVIEW
        View3.leftAnchor.constraint(equalTo: View2.leftAnchor, constant: 6).isActive = true
        View3.widthAnchor.constraint(equalToConstant: View2.bounds.width*0.1800).isActive = true
        View3.topAnchor.constraint(equalTo: View2.topAnchor, constant: 6).isActive = true
        View3.bottomAnchor.constraint(equalTo: View2.bottomAnchor, constant: -6).isActive = true
        View3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        View4.leftAnchor.constraint(equalTo: View3.rightAnchor, constant: 15).isActive = true
        View4.widthAnchor.constraint(equalToConstant: View2.bounds.width*0.4500).isActive = true
        View4.topAnchor.constraint(equalTo: View2.topAnchor, constant: 6).isActive = true
        View4.bottomAnchor.constraint(equalTo: View2.bottomAnchor, constant: -6).isActive = true
        View4.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        View5.leftAnchor.constraint(equalTo: View4.rightAnchor, constant: 10).isActive = true
        View5.rightAnchor.constraint(equalTo: View2.rightAnchor, constant: -6).isActive = true
        View5.widthAnchor.constraint(equalToConstant: View2.bounds.width*0.2500).isActive = true
        View5.topAnchor.constraint(equalTo: View2.topAnchor, constant: 6).isActive = true
        View5.bottomAnchor.constraint(equalTo: View2.bottomAnchor, constant: -6).isActive = true
        View5.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        View6.widthAnchor.constraint(equalToConstant: 8).isActive = true
        View6.heightAnchor.constraint(equalToConstant: 8).isActive = true
        View6.leftAnchor.constraint(equalTo: View5.leftAnchor, constant: 5).isActive = true
        View6.centerYAnchor.constraint(equalTo: View5.centerYAnchor).isActive = true
        
//        MARK: - UIImage
        trackingImage2.centerXAnchor.constraint(equalTo: View3.centerXAnchor).isActive = true
        trackingImage2.centerYAnchor.constraint(equalTo: View3.centerYAnchor).isActive = true
                
//        MARK: - UILabelLocation
        
        currentLocation.topAnchor.constraint(equalTo: View4.topAnchor, constant: 5).isActive = true
        currentLocation.leftAnchor.constraint(equalTo: View4.leftAnchor, constant: 5).isActive = true

        
//        MARK: - UILabelName
        
        currentName.leftAnchor.constraint(equalTo: View4.leftAnchor, constant: 5).isActive = true
        currentName.centerYAnchor.constraint(equalTo: View4.centerYAnchor).isActive = true
        
//        MARK: - UILabelData
        currentData.bottomAnchor.constraint(equalTo: View4.bottomAnchor, constant: -5).isActive = true
        currentData.leftAnchor.constraint(equalTo: View4.leftAnchor, constant: 5).isActive = true
        
//       MARK: - UILabel
        trackingTime.rightAnchor.constraint(equalTo: View5.rightAnchor,constant: -5).isActive = true
        trackingTime.centerYAnchor.constraint(equalTo: View5.centerYAnchor).isActive = true
     
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
}
