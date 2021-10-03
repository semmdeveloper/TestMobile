
import UIKit
import MapKit

class DetailisViewController: UIViewController, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        view.backgroundColor = Utils.dashboardcolor
        self.navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.isTranslucent = true
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        setups()
       }
    
//  MARK: - Map
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            let mapView = MKMapView()
            mapView.frame = CGRect(x: UIScreen.main.bounds.width*0, y: UIScreen.main.bounds.height*0.00, width: UIScreen.main.bounds.width*1, height: UIScreen.main.bounds.height*0.5000)
            mapView.mapType = MKMapType.standard
            mapView.isZoomEnabled = true
            mapView.isScrollEnabled = true
            homeView.addSubview(mapView)
            homeView.addSubview(arrivedView)
            homeView.addSubview(detailView)
            homeView.addSubview(pdfView)
            homeView.addSubview(labelView)
            homeView.addSubview(labelViewTwoo)
        }
    
//    MARK: - ScrollView
    
    private let scrollView: UIScrollView = {
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        scrollView.contentSize = CGSize(width: 0, height: 2000)
        return scrollView
        }()

    
    
//    MARK: - labelTexts
    
    let locationlabelText : UILabel = {
        let locationlabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        locationlabelText.textColor = Utils.lblbuttonColor
        locationlabelText.text = "12503 Apex Great Basin Way"
        locationlabelText.translatesAutoresizingMaskIntoConstraints = false
        locationlabelText.font = UIFont.boldSystemFont(ofSize: 12)
        return locationlabelText
    }()
    
    let nameLabelText : UILabel = {
        let nameLabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        nameLabelText.textColor = UIColor.black
        nameLabelText.text = "Portland, TX"
        nameLabelText.translatesAutoresizingMaskIntoConstraints = false
        nameLabelText.contentMode = .scaleAspectFill
        nameLabelText.font = UIFont.boldSystemFont(ofSize: 13)
        return nameLabelText
    }()
    
    let nameLabelTextTwoo : UILabel = {
        let nameLabelTextTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        nameLabelTextTwoo.textColor = UIColor.black
        nameLabelTextTwoo.text = "Fort Gibson, OK"
        nameLabelTextTwoo.translatesAutoresizingMaskIntoConstraints = false
        nameLabelTextTwoo.contentMode = .scaleAspectFill
        nameLabelTextTwoo.font = UIFont.boldSystemFont(ofSize: 13)
        return nameLabelTextTwoo
    }()
    
    let dataLabelText : UILabel = {
        let dataLabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        dataLabelText.textColor = UIColor.systemGray
        dataLabelText.text = "13 Sep, 2021"
        dataLabelText.translatesAutoresizingMaskIntoConstraints = false
        dataLabelText.contentMode = .scaleAspectFill
        dataLabelText.font = UIFont.boldSystemFont(ofSize: 12)
        return dataLabelText
    }()
    
    let dataLabelTextTwoo : UILabel = {
        let dataLabelTextTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        dataLabelTextTwoo.textColor = UIColor.systemGray
        dataLabelTextTwoo.text = "18 Sep, 2021"
        dataLabelTextTwoo.translatesAutoresizingMaskIntoConstraints = false
        dataLabelTextTwoo.contentMode = .scaleAspectFill
        dataLabelTextTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return dataLabelTextTwoo
        
    }()
    
    let numberLabelText : UILabel = {
        let numberLabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        numberLabelText.textColor = UIColor.systemGray
        numberLabelText.text = "Trailer Number"
        numberLabelText.translatesAutoresizingMaskIntoConstraints = false
        numberLabelText.contentMode = .scaleAspectFill
        numberLabelText.font = UIFont.boldSystemFont(ofSize: 12)
        return numberLabelText
        
    }()
    
    let numberLabelTextTwoo : UILabel = {
        let numberLabelTextTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        numberLabelTextTwoo.textColor = UIColor.black
        numberLabelTextTwoo.text = "181233121"
        numberLabelTextTwoo.translatesAutoresizingMaskIntoConstraints = false
        numberLabelTextTwoo.contentMode = .scaleAspectFill
        numberLabelTextTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return numberLabelTextTwoo
        
    }()
    
    let distanceLabelText : UILabel = {
        let distanceLabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        distanceLabelText.textColor = UIColor.systemGray
        distanceLabelText.text = "Distance left"
        distanceLabelText.translatesAutoresizingMaskIntoConstraints = false
        distanceLabelText.contentMode = .scaleAspectFill
        distanceLabelText.font = UIFont.boldSystemFont(ofSize: 12)
        return distanceLabelText
        
    }()
    
    let distanceLabelTextTwoo : UILabel = {
        let distanceLabelTextTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        distanceLabelTextTwoo.textColor = UIColor.black
        distanceLabelTextTwoo.text = "532 mile"
        distanceLabelTextTwoo.translatesAutoresizingMaskIntoConstraints = false
        distanceLabelTextTwoo.contentMode = .scaleAspectFill
        distanceLabelTextTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return distanceLabelTextTwoo
    }()
    
    let timeLabelText : UILabel = {
        let timeLabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        timeLabelText.textColor = UIColor.systemGray
        timeLabelText.text = "Est. time left"
        timeLabelText.translatesAutoresizingMaskIntoConstraints = false
        timeLabelText.contentMode = .scaleAspectFill
        timeLabelText.font = UIFont.boldSystemFont(ofSize: 14)
        return timeLabelText
    }()
    
    let timeLabelTextTwoo : UILabel = {
        let timeLabelTextTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        timeLabelTextTwoo.textColor = UIColor.green
        timeLabelTextTwoo.text = "-4h : 30m"
        timeLabelTextTwoo.translatesAutoresizingMaskIntoConstraints = false
        timeLabelTextTwoo.contentMode = .scaleAspectFill
        timeLabelTextTwoo.font = UIFont.boldSystemFont(ofSize: 20)
        return timeLabelTextTwoo
    }()
    
    let helloLabel : UILabel = {
        let helloLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        helloLabel.textColor = UIColor.green
        helloLabel.text = "-4h : 30m"
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.contentMode = .scaleAspectFill
        helloLabel.font = UIFont.boldSystemFont(ofSize: 20)
        return helloLabel
    }()
    
    
// MARK: -  UIImages
    
    let locationImage : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "123")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
// MARK: - Views
    
    private let homeView: UIView = {
        let homeView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0, y: -100, width: UIScreen.main.bounds.width*10, height: UIScreen.main.bounds.height*10));
        homeView.layer.cornerRadius = 0
        homeView.backgroundColor = Utils.dashboardcolor
        return homeView
     
    }()
    
    private let arrivedView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.3500, width: UIScreen.main.bounds.width*0.9000, height: UIScreen.main.bounds.height*0.5200));
        arrivedView.layer.cornerRadius = 15
        arrivedView.backgroundColor = UIColor.white
        return arrivedView
    }()
    
    private let lineView: UIView = {
        let lineView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.4500, y: UIScreen.main.bounds.height*0.3500, width: UIScreen.main.bounds.width*0.0025, height: 40));
        lineView.layer.cornerRadius = 0
        lineView.backgroundColor = UIColor.systemGray
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.contentMode = .scaleAspectFill
        return lineView
    }()
    
    private let lineViewTwoo: UIView = {
        let lineViewTwoo = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.1300, y: UIScreen.main.bounds.height*0.4300, width: UIScreen.main.bounds.width*0.6500, height: 1));
        lineViewTwoo.layer.cornerRadius = 0
        lineViewTwoo.backgroundColor = UIColor.systemGray
        lineViewTwoo.translatesAutoresizingMaskIntoConstraints = false
        lineViewTwoo.contentMode = .scaleAspectFill
        return lineViewTwoo
    }()
    

//    MARK: - UIButtons
    
   private let arrivedButton:UIButton={
        let arrivedButton = UIButton()
       arrivedButton.frame = CGRect(x: UIScreen.main.bounds.width*0.102, y: UIScreen.main.bounds.height*0.25, width: UIScreen.main.bounds.width*0.70, height: 48)
        arrivedButton.backgroundColor = Utils.buttonColor
        arrivedButton.layer.cornerRadius = 15
        arrivedButton.setTitle("Arrived", for: .normal)
        arrivedButton.title(for: .normal)
       arrivedButton .addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return arrivedButton
    }()
    
    @objc func buttonClicked() {
          print("Button Clicked")
         self.navigationController?.pushViewController(ReportViewController(), animated: false)

    
    
     }
    
    
    
    
    
    
    
    
    
//    MARK: - Detail Pages
    
//    MARK: - Deatil Views
    
    private let detailView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.9500, width: UIScreen.main.bounds.width*0.9000, height: UIScreen.main.bounds.height*0.5300));
        arrivedView.layer.cornerRadius = 15
        arrivedView.backgroundColor = UIColor.white
        return arrivedView
    }()
    
    private let detailNumberView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.0500, width: UIScreen.main.bounds.width*0.3500, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 8
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailDistanceView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.4800, y: UIScreen.main.bounds.height*0.0500, width: UIScreen.main.bounds.width*0.3500, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 8
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailTimeView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.1500, width: UIScreen.main.bounds.width*0.3500, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 8
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailWeightView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.4800, y: UIScreen.main.bounds.height*0.1500, width: UIScreen.main.bounds.width*0.3500, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 8
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailDriverView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.2500, width: UIScreen.main.bounds.width*0.3500, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 8
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailPhoneView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.4800, y: UIScreen.main.bounds.height*0.2500, width: UIScreen.main.bounds.width*0.3500, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 8
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailPickupView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.3500, width: UIScreen.main.bounds.width*0.5500, height: UIScreen.main.bounds.height*0.0700));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailDeliveryView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.4500, width: UIScreen.main.bounds.width*0.5500, height: UIScreen.main.bounds.height*0.0700));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailPickupLocationView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.6750, y: UIScreen.main.bounds.height*0.3500, width: UIScreen.main.bounds.width*0.1500, height: UIScreen.main.bounds.height*0.0700));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailDeliveryLocationView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.6750, y: UIScreen.main.bounds.height*0.4500, width: UIScreen.main.bounds.width*0.1500, height: UIScreen.main.bounds.height*0.0700));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.detailviewcolor
        return arrivedView
    }()
    
    private let detailPoint :UIView = {
        let myView=UIView()
        myView.backgroundColor = UIColor.black
        myView.layer.cornerRadius=3
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
    private let deliveryPoint :UIView = {
        let myView=UIView()
        myView.backgroundColor = UIColor.black
        myView.layer.cornerRadius=3
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.contentMode = .scaleAspectFit
       return myView
        
    }()
    
//    MARK: - Detail Label Texts
    
    let detailNumber : UILabel = {
        let detailNumber = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailNumber.textColor = UIColor.systemGray
        detailNumber.text = "Trailer Number"
        detailNumber.translatesAutoresizingMaskIntoConstraints = false
        detailNumber.contentMode = .scaleAspectFill
        detailNumber.font = UIFont.systemFont(ofSize: 10)
        return detailNumber
        
    }()
    
    let detailPickupText : UILabel = {
        let detailNumber = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailNumber.textColor = UIColor.systemGray
        detailNumber.text = "Pickup"
        detailNumber.translatesAutoresizingMaskIntoConstraints = false
        detailNumber.contentMode = .scaleAspectFill
        detailNumber.font = UIFont.systemFont(ofSize: 10)
        return detailNumber
        
    }()
    
    let detailDeliveryText : UILabel = {
        let detailNumber = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailNumber.textColor = UIColor.systemGray
        detailNumber.text = "Delivery"
        detailNumber.translatesAutoresizingMaskIntoConstraints = false
        detailNumber.contentMode = .scaleAspectFill
        detailNumber.font = UIFont.systemFont(ofSize: 10)
        return detailNumber
        
    }()
    let detailNumberTwo : UILabel = {
        let detailNumberTwo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailNumberTwo.textColor = UIColor.black
        detailNumberTwo.text = "181312312423"
        detailNumberTwo.translatesAutoresizingMaskIntoConstraints = false
        detailNumberTwo.contentMode = .scaleAspectFill
        detailNumberTwo.font = UIFont.boldSystemFont(ofSize: 12)
        return detailNumberTwo
        
    }()
    
    let detailDistance : UILabel = {
        let detailDistance = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDistance.textColor = UIColor.systemGray
        detailDistance.text = "Distance"
        detailDistance.translatesAutoresizingMaskIntoConstraints = false
        detailDistance.contentMode = .scaleAspectFill
        detailDistance.font = UIFont.systemFont(ofSize: 10)
        return detailDistance
        
    }()
    
    let detailDistanceTwoo : UILabel = {
        let detailDistanceTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDistanceTwoo.textColor = UIColor.black
        detailDistanceTwoo.text = "895 mile"
        detailDistanceTwoo.translatesAutoresizingMaskIntoConstraints = false
        detailDistanceTwoo.contentMode = .scaleAspectFill
        detailDistanceTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return detailDistanceTwoo
        
    }()
    
    let detailTime : UILabel = {
        let detailTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailTime.textColor = UIColor.systemGray
        detailTime.text = "Est. time"
        detailTime.translatesAutoresizingMaskIntoConstraints = false
        detailTime.contentMode = .scaleAspectFill
        detailTime.font = UIFont.systemFont(ofSize: 10)
        return detailTime
        
    }()
    
    let detailTimeTwoo : UILabel = {
        let detailTimeTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailTimeTwoo.textColor = UIColor.black
        detailTimeTwoo.text = "-7h : 30m"
        detailTimeTwoo.translatesAutoresizingMaskIntoConstraints = false
        detailTimeTwoo.contentMode = .scaleAspectFill
        detailTimeTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return detailTimeTwoo
        
    }()
    
    let detailWeight : UILabel = {
        let detailWeight = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailWeight.textColor = UIColor.systemGray
        detailWeight.text = "Weight"
        detailWeight.translatesAutoresizingMaskIntoConstraints = false
        detailWeight.contentMode = .scaleAspectFill
        detailWeight.font = UIFont.systemFont(ofSize: 10)
        return detailWeight
        
    }()
    
    let detailWeightTwoo : UILabel = {
        let detailWeightTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailWeightTwoo.textColor = UIColor.black
        detailWeightTwoo.text = "14600"
        detailWeightTwoo.translatesAutoresizingMaskIntoConstraints = false
        detailWeightTwoo.contentMode = .scaleAspectFill
        detailWeightTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return detailWeightTwoo
        
    }()
    
    let detailDriver : UILabel = {
        let detailDriver = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDriver.textColor = UIColor.systemGray
        detailDriver.text = "Driver"
        detailDriver.translatesAutoresizingMaskIntoConstraints = false
        detailDriver.contentMode = .scaleAspectFill
        detailDriver.font = UIFont.systemFont(ofSize: 10)
        return detailDriver
        
    }()
    
    let detailDriverTwoo : UILabel = {
        let detailDriverTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDriverTwoo.textColor = UIColor.black
        detailDriverTwoo.text = "Garry Nicholas"
        detailDriverTwoo.translatesAutoresizingMaskIntoConstraints = false
        detailDriverTwoo.contentMode = .scaleAspectFill
        detailDriverTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return detailDriverTwoo
        
    }()
    
    let detailPhone : UILabel = {
        let detailPhone = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailPhone.textColor = UIColor.systemGray
        detailPhone.text = "Phone"
        detailPhone.translatesAutoresizingMaskIntoConstraints = false
        detailPhone.contentMode = .scaleAspectFill
        detailPhone.font = UIFont.boldSystemFont(ofSize: 10)
        return detailPhone
        
    }()
    
    let detailPhoneTwoo : UILabel = {
        let detailPhoneTwoo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailPhoneTwoo.textColor = UIColor.black
        detailPhoneTwoo.text = "555-555-555"
        detailPhoneTwoo.translatesAutoresizingMaskIntoConstraints = false
        detailPhoneTwoo.contentMode = .scaleAspectFill
        detailPhoneTwoo.font = UIFont.boldSystemFont(ofSize: 12)
        return detailPhoneTwoo
        
    }()
    
    let detailFTW : UILabel = {
        let detailFTW = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailFTW.textColor = UIColor.black
        detailFTW.text = "FTW2"
        detailFTW.translatesAutoresizingMaskIntoConstraints = false
        detailFTW.contentMode = .scaleAspectFill
        detailFTW.font = UIFont.boldSystemFont(ofSize: 14)
        return detailFTW
        
    }()
    
    let detailLocation : UILabel = {
        let detailLocation = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailLocation.textColor = UIColor.systemGray
        detailLocation.text = "Cranbury, New Jersey"
        detailLocation.translatesAutoresizingMaskIntoConstraints = false
        detailLocation.contentMode = .scaleAspectFill
        detailLocation.font = UIFont.boldSystemFont(ofSize: 10)
        return detailLocation
        
    }()
    
    let detailDataTime : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.systemGray
        detailDataTime.text = "14/09/22 11:40 PDT"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 9)
        return detailDataTime
        
    }()
    
    let deliveryFTW : UILabel = {
        let detailFTW = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailFTW.textColor = UIColor.black
        detailFTW.text = "FTW2"
        detailFTW.translatesAutoresizingMaskIntoConstraints = false
        detailFTW.contentMode = .scaleAspectFill
        detailFTW.font = UIFont.boldSystemFont(ofSize: 14)
        return detailFTW
        
    }()
    
    let deliveryLocation : UILabel = {
        let detailLocation = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailLocation.textColor = UIColor.systemGray
        detailLocation.text = "Cranbury, New Jersey"
        detailLocation.translatesAutoresizingMaskIntoConstraints = false
        detailLocation.contentMode = .scaleAspectFill
        detailLocation.font = UIFont.boldSystemFont(ofSize: 10)
        return detailLocation
        
    }()
    
    let deliveryDataTime : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.systemGray
        detailDataTime.text = "14/09/22 11:40 PDT"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 9)
        return detailDataTime
        
    }()
    
//    MARK: - DetailImages
    
    let detailTimeImage : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "time")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
    let deliveryTimeImage : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "time")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
    let DetailLocationImage : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "12")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
    let DetailDeliveryLocationImage : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "13")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
    
//    MARK: - PDF Pages
    
//    MARK: - PDf Views
    
    private let pdfView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*1.57, width: UIScreen.main.bounds.width*0.9000, height: UIScreen.main.bounds.height*0.4300));
        arrivedView.layer.cornerRadius = 25
        arrivedView.backgroundColor = UIColor.white
        return arrivedView
    }()
    
    private let pdfViewOne: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0750, y: UIScreen.main.bounds.height*0.0400, width: UIScreen.main.bounds.width*0.1600, height: UIScreen.main.bounds.height*0.0900));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.chatColor2
        return arrivedView
    }()
    
    private let pdfViewTwoo: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0750, y: UIScreen.main.bounds.height*0.1800, width: UIScreen.main.bounds.width*0.1600, height: UIScreen.main.bounds.height*0.0900));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.chatColor2
        return arrivedView
    }()
    
    private let pdfViewThree: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0750, y: UIScreen.main.bounds.height*0.3200, width: UIScreen.main.bounds.width*0.1600, height: UIScreen.main.bounds.height*0.0900));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.chatColor2
        return arrivedView
    }()
    
//    MARK: - PDF Images
    
    
    let pdfImages : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "scrip")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
    let pdfImagestwoo : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "scriptwoo")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
    let pdfImagesThree : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "scripthree")
        locationImage.tintColor = Utils.lblbuttonColor
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        return locationImage
    }()
    
//    MARK: - PDF Label Text
    
    let pdfLabelText : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.white
        detailDataTime.text = "insur.pdf"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 10)
        return detailDataTime
        
    }()
    
    let pdfLabelTextTwoo : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.white
        detailDataTime.text = "insur.pdf"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 10)
        return detailDataTime
        
    }()
    
    let pdfLabelTextThree : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.white
        detailDataTime.text = "insur.pdf"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 10)
        return detailDataTime
        
    }()
    
    let pdfDescriptionLabeltext : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.black
        detailDataTime.text = "Bill of Lading"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 12)
        return detailDataTime
        
    }()
    
    let pdfDescriptionLabeltextTwoo : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.black
        detailDataTime.text = "Trailer Documentation"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 12)
        return detailDataTime
        
    }()
    
    let pdfDescriptionLabeltextThree : UILabel = {
        let detailDataTime = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        detailDataTime.textColor = UIColor.black
        detailDataTime.text = "Insurance"
        detailDataTime.translatesAutoresizingMaskIntoConstraints = false
        detailDataTime.contentMode = .scaleAspectFill
        detailDataTime.font = UIFont.boldSystemFont(ofSize: 12)
        return detailDataTime
        
    }()
    
//    MARK: -UILabel Text
    private let labelView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.8750, width: UIScreen.main.bounds.width*0.3000, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.dashboardcolor
        return arrivedView
    }()
    
    private let labelViewTwoo: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*1.495, width: UIScreen.main.bounds.width*0.3000, height: UIScreen.main.bounds.height*0.0600));
        arrivedView.layer.cornerRadius = 10
        arrivedView.backgroundColor = Utils.dashboardcolor
        return arrivedView
    }()
    
    let homeDetailLabelText : UILabel = {
        let locationlabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        locationlabelText.textColor = UIColor.black
        locationlabelText.text = "Detailes"
        locationlabelText.translatesAutoresizingMaskIntoConstraints = false
        locationlabelText.font = UIFont.boldSystemFont(ofSize: 14)
        return locationlabelText
    }()
    
    let homeDetailLabelTextTwoo : UILabel = {
        let locationlabelText = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 12));
        locationlabelText.textColor = UIColor.black
        locationlabelText.text = "Documents"
        locationlabelText.translatesAutoresizingMaskIntoConstraints = false
        locationlabelText.font = UIFont.boldSystemFont(ofSize: 14)
        return locationlabelText
    }()
    
    
    
//  MARK:  - All Setups
    
    func setups(){

        setupArrivedView()

        setupDetailView()
        
        setupPdf()
        
        setupHomeLabeltext()

    }
    
 
    func  setupHomeLabeltext(){
        labelView.addSubview(homeDetailLabelText)
        labelViewTwoo.addSubview(homeDetailLabelTextTwoo)
        homeDetailLabelText.centerYAnchor.constraint(equalTo: labelView.centerYAnchor).isActive = true
        homeDetailLabelTextTwoo.centerYAnchor.constraint(equalTo: labelViewTwoo.centerYAnchor).isActive = true
        
    }
    
    
//    MARK: Arrived Views
    func setupArrivedView(){
        
        
        arrivedView.addSubview(lineView)
        arrivedView.addSubview(lineViewTwoo)
        
        arrivedView.addSubview(locationImage)
        locationImage.topAnchor.constraint(equalTo: arrivedView.topAnchor, constant: 30).isActive = true
        locationImage.leftAnchor.constraint(equalTo: arrivedView.leftAnchor, constant: 30).isActive = true
        locationImage.widthAnchor.constraint(equalToConstant: 12).isActive = true
        locationImage.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        arrivedView.addSubview(locationlabelText)
        locationlabelText.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 30).isActive = true
        locationlabelText.leftAnchor.constraint(equalTo: locationImage.leftAnchor,constant: 25).isActive = true
        locationlabelText.widthAnchor.constraint(equalToConstant: 1000).isActive = true
        locationlabelText.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        arrivedView.addSubview(nameLabelText)
        nameLabelText.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 120).isActive = true
        nameLabelText.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 30).isActive = true
        
        arrivedView.addSubview(nameLabelTextTwoo)
        nameLabelTextTwoo.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 120).isActive = true
        nameLabelTextTwoo.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -30).isActive = true
        
        arrivedView.addSubview(dataLabelText)
        dataLabelText.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 100).isActive = true
        dataLabelText.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 30).isActive = true
        
        arrivedView.addSubview(dataLabelTextTwoo)
        dataLabelTextTwoo.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 100).isActive = true
        dataLabelTextTwoo.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -30).isActive = true
        
        arrivedView.addSubview(arrivedButton)
        
        arrivedView.addSubview(numberLabelText)
        arrivedView.addSubview(lineViewTwoo)
        numberLabelText.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 60).isActive = true
        numberLabelText.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 40).isActive = true
        

        arrivedView.addSubview(distanceLabelText)
        distanceLabelText.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 60).isActive = true
        distanceLabelText.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -40).isActive = true

        arrivedView.addSubview(numberLabelTextTwoo)
        numberLabelTextTwoo.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 75).isActive = true
        numberLabelTextTwoo.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 50).isActive = true

        arrivedView.addSubview(distanceLabelTextTwoo)
        distanceLabelTextTwoo.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 75).isActive = true
        distanceLabelTextTwoo.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -50).isActive = true
        
        arrivedView.addSubview(timeLabelText)
        timeLabelText.bottomAnchor.constraint(equalTo: arrivedView.bottomAnchor,constant: -30).isActive = true
        timeLabelText.centerXAnchor.constraint(equalTo: arrivedView.centerXAnchor).isActive = true
        
        arrivedView.addSubview(timeLabelTextTwoo)
        timeLabelTextTwoo.bottomAnchor.constraint(equalTo: arrivedView.bottomAnchor,constant: -5).isActive = true
        timeLabelTextTwoo.centerXAnchor.constraint(equalTo: arrivedView.centerXAnchor).isActive = true
    }
    

    
// MARK: - Detail Views
    
    func setupDetailView(){
        detailView.addSubview(detailNumberView)
        
        detailView.addSubview(detailDistanceView)
        
        detailView.addSubview(detailWeightView)
        
        detailView.addSubview(detailTimeView)
        
        detailView.addSubview(detailDriverView)
        
        detailView.addSubview(detailPhoneView)
        
        detailView.addSubview(detailNumber)
        detailNumber.topAnchor.constraint(equalTo: detailView.topAnchor,constant: 15).isActive = true
        detailNumber.leftAnchor.constraint(equalTo: detailNumberView.leftAnchor,constant: 5).isActive = true
        
        detailNumberView.addSubview(detailNumberTwo)
        detailNumberTwo.centerXAnchor.constraint(equalTo: detailNumberView.centerXAnchor).isActive = true
        detailNumberTwo.centerYAnchor.constraint(equalTo: detailNumberView.centerYAnchor).isActive = true
        
        detailDistanceView.addSubview(detailDistanceTwoo)
        detailDistanceTwoo.centerXAnchor.constraint(equalTo: detailDistanceView.centerXAnchor).isActive = true
        detailDistanceTwoo.centerYAnchor.constraint(equalTo: detailDistanceView.centerYAnchor).isActive = true
        
        detailView.addSubview(detailDistance)
        detailDistance.topAnchor.constraint(equalTo: detailView.topAnchor,constant: 15).isActive = true
        detailDistance.leftAnchor.constraint(equalTo: detailDistanceView.leftAnchor,constant: 5).isActive = true
        
        detailTimeView.addSubview(detailTimeTwoo)
        detailTimeTwoo.centerXAnchor.constraint(equalTo: detailTimeView.centerXAnchor).isActive = true
        detailTimeTwoo.centerYAnchor.constraint(equalTo: detailTimeView.centerYAnchor).isActive = true
        
        detailView.addSubview(detailTime)
        detailTime.topAnchor.constraint(equalTo: detailNumberView.bottomAnchor,constant: 10 ).isActive = true
        detailTime.leftAnchor.constraint(equalTo: detailTimeView.leftAnchor,constant: 5).isActive = true
        
        detailWeightView.addSubview(detailWeightTwoo)
        detailWeightTwoo.centerXAnchor.constraint(equalTo: detailWeightView.centerXAnchor).isActive = true
        detailWeightTwoo.centerYAnchor.constraint(equalTo: detailWeightView.centerYAnchor).isActive = true
        
        detailView.addSubview(detailWeight)
        detailWeight.topAnchor.constraint(equalTo: detailDistanceView.bottomAnchor,constant: 10).isActive = true
        detailWeight.leftAnchor.constraint(equalTo: detailWeightView.leftAnchor,constant: 5).isActive = true
        
        detailDriverView.addSubview(detailDriverTwoo)
        detailDriverTwoo.centerXAnchor.constraint(equalTo: detailDriverView.centerXAnchor).isActive = true
        detailDriverTwoo.centerYAnchor.constraint(equalTo: detailDriverView.centerYAnchor).isActive = true
        
        detailView.addSubview(detailDriver)
        detailDriver.topAnchor.constraint(equalTo: detailTimeView.bottomAnchor,constant: 10 ).isActive = true
        detailDriver.leftAnchor.constraint(equalTo: detailDriverView.leftAnchor,constant: 5).isActive = true
        
        detailPhoneView.addSubview(detailPhoneTwoo)
        detailPhoneTwoo.centerXAnchor.constraint(equalTo: detailPhoneView.centerXAnchor).isActive = true
        detailPhoneTwoo.centerYAnchor.constraint(equalTo: detailPhoneView.centerYAnchor).isActive = true
        
        detailView.addSubview(detailPhone)
        detailPhone.topAnchor.constraint(equalTo: detailWeightView.bottomAnchor,constant: 10).isActive = true
        detailPhone.leftAnchor.constraint(equalTo: detailPhoneView.leftAnchor,constant: 5).isActive = true
        
        detailView.addSubview(detailPickupText)
        detailPickupText.topAnchor.constraint(equalTo: detailDriverView.bottomAnchor,constant: 10).isActive = true
        detailPickupText.leftAnchor.constraint(equalTo: detailDriverView.leftAnchor,constant: 5).isActive = true
        

  
        
        detailView.addSubview(detailPickupView)
        detailPickupView.addSubview(detailFTW)
        detailPickupView.addSubview(detailLocation)
        detailPickupView.addSubview(detailTimeImage)
        detailPickupView.addSubview(detailDataTime)
        detailPickupView.addSubview(detailPoint)
        detailView.addSubview(detailDeliveryText)
        detailPickupLocationView.addSubview(DetailLocationImage)
        detailDeliveryText.leftAnchor.constraint(equalTo: detailDriverView.leftAnchor,constant: 5).isActive = true
        detailDeliveryText.topAnchor.constraint(equalTo: detailPickupView.bottomAnchor,constant: 3).isActive = true
        detailFTW.topAnchor.constraint(equalTo: detailPickupView.topAnchor,constant: 5).isActive = true
        detailFTW.leftAnchor.constraint(equalTo: detailPickupView.leftAnchor,constant: 10).isActive = true
        detailLocation.topAnchor.constraint(equalTo: detailPickupView.topAnchor,constant: 5).isActive = true
        detailLocation.leftAnchor.constraint(equalTo: detailFTW.rightAnchor,constant: 10).isActive = true
        detailLocation.centerYAnchor.constraint(equalTo: detailFTW.centerYAnchor).isActive = true
        detailTimeImage.topAnchor.constraint(equalTo: detailFTW.bottomAnchor,constant: 5).isActive = true
        detailTimeImage.leftAnchor.constraint(equalTo: detailPickupView.leftAnchor,constant: 10).isActive = true
        detailDataTime.leftAnchor.constraint(equalTo: detailTime.leftAnchor,constant: 20).isActive = true
        detailDataTime.topAnchor.constraint(equalTo: detailFTW.bottomAnchor,constant: 5).isActive = true
        detailPoint.widthAnchor.constraint(equalToConstant: 4).isActive = true
        detailPoint.heightAnchor.constraint(equalToConstant: 4).isActive = true
        detailPoint.centerYAnchor.constraint(equalTo: detailFTW.centerYAnchor).isActive = true
        detailPoint.leftAnchor.constraint(equalTo: detailFTW.rightAnchor,constant: 3).isActive = true
        DetailLocationImage.centerYAnchor.constraint(equalTo: detailPickupLocationView.centerYAnchor).isActive = true
        DetailLocationImage.centerXAnchor.constraint(equalTo: detailPickupLocationView.centerXAnchor).isActive = true
        
        detailView.addSubview(detailDeliveryView)
        detailDeliveryView.addSubview(deliveryFTW)
        detailDeliveryView.addSubview(deliveryLocation)
        detailDeliveryView.addSubview(deliveryTimeImage)
        detailDeliveryView.addSubview(deliveryDataTime)
        detailDeliveryView.addSubview(deliveryPoint)
        detailDeliveryLocationView.addSubview(DetailDeliveryLocationImage)
        deliveryFTW.topAnchor.constraint(equalTo: detailDeliveryView.topAnchor,constant: 5).isActive = true
        deliveryFTW.leftAnchor.constraint(equalTo: detailDeliveryView.leftAnchor,constant: 10).isActive = true
        deliveryLocation.topAnchor.constraint(equalTo: detailDeliveryView.topAnchor,constant: 5).isActive = true
        deliveryLocation.leftAnchor.constraint(equalTo: deliveryFTW.rightAnchor,constant: 10).isActive = true
        deliveryLocation.centerYAnchor.constraint(equalTo: deliveryFTW.centerYAnchor).isActive = true
        deliveryTimeImage.topAnchor.constraint(equalTo: deliveryFTW.bottomAnchor,constant: 5).isActive = true
        deliveryTimeImage.leftAnchor.constraint(equalTo: detailDeliveryView.leftAnchor,constant: 10).isActive = true
        deliveryDataTime.leftAnchor.constraint(equalTo: deliveryTimeImage.leftAnchor,constant: 20).isActive = true
        deliveryDataTime.topAnchor.constraint(equalTo: deliveryFTW.bottomAnchor,constant: 5).isActive = true
        deliveryPoint.widthAnchor.constraint(equalToConstant: 4).isActive = true
        deliveryPoint.heightAnchor.constraint(equalToConstant: 4).isActive = true
        deliveryPoint.centerYAnchor.constraint(equalTo: deliveryFTW.centerYAnchor).isActive = true
        deliveryPoint.leftAnchor.constraint(equalTo: deliveryFTW.rightAnchor,constant: 3).isActive = true
        DetailDeliveryLocationImage.centerYAnchor.constraint(equalTo: detailDeliveryLocationView.centerYAnchor).isActive = true
        DetailDeliveryLocationImage.centerXAnchor.constraint(equalTo: detailDeliveryLocationView.centerXAnchor).isActive = true
        
        detailView.addSubview(detailPickupLocationView)
        
        detailView.addSubview(detailDeliveryLocationView)
        
    }
    
    func setupPdf(){
        pdfView.addSubview(pdfViewOne)
        pdfView.addSubview(pdfViewTwoo)
        pdfView.addSubview(pdfViewThree)
        pdfViewOne.addSubview(pdfImages)
        pdfViewTwoo.addSubview(pdfImagestwoo)
        pdfViewThree.addSubview(pdfImagesThree)
        pdfImages.centerXAnchor.constraint(equalTo: pdfViewOne.centerXAnchor).isActive = true
        pdfImages.centerYAnchor.constraint(equalTo: pdfViewOne.centerYAnchor).isActive = true
        pdfImagestwoo.centerXAnchor.constraint(equalTo: pdfViewTwoo.centerXAnchor).isActive = true
        pdfImagestwoo.centerYAnchor.constraint(equalTo: pdfViewTwoo.centerYAnchor).isActive = true
        pdfImagesThree.centerXAnchor.constraint(equalTo: pdfViewThree.centerXAnchor).isActive = true
        pdfImagesThree.centerYAnchor.constraint(equalTo: pdfViewThree.centerYAnchor).isActive = true
        
        pdfViewOne.addSubview(pdfLabelText)
        pdfViewTwoo.addSubview(pdfLabelTextTwoo)
        pdfViewThree.addSubview(pdfLabelTextThree)
        pdfLabelText.bottomAnchor.constraint(equalTo: pdfImages.bottomAnchor,constant: 15).isActive = true
        pdfLabelText.centerXAnchor.constraint(equalTo: pdfViewOne.centerXAnchor).isActive = true
        pdfLabelTextTwoo.bottomAnchor.constraint(equalTo: pdfImagestwoo.bottomAnchor,constant: 15).isActive = true
        pdfLabelTextTwoo.centerXAnchor.constraint(equalTo: pdfViewTwoo.centerXAnchor).isActive = true
        pdfLabelTextThree.bottomAnchor.constraint(equalTo: pdfImagesThree.bottomAnchor,constant: 15).isActive = true
        pdfLabelTextThree.centerXAnchor.constraint(equalTo: pdfViewThree.centerXAnchor).isActive = true

        
        pdfView.addSubview(pdfDescriptionLabeltext)
        pdfView.addSubview(pdfDescriptionLabeltextTwoo)
        pdfView.addSubview(pdfDescriptionLabeltextThree)
        pdfDescriptionLabeltext.centerYAnchor.constraint(equalTo: pdfViewOne.centerYAnchor).isActive = true
        pdfDescriptionLabeltext.leftAnchor.constraint(equalTo: pdfViewOne.rightAnchor,constant: 20).isActive = true
        pdfDescriptionLabeltextTwoo.centerYAnchor.constraint(equalTo: pdfViewTwoo.centerYAnchor).isActive = true
        pdfDescriptionLabeltextTwoo.leftAnchor.constraint(equalTo: pdfViewTwoo.rightAnchor,constant: 20).isActive = true
        pdfDescriptionLabeltextThree.centerYAnchor.constraint(equalTo: pdfViewThree.centerYAnchor).isActive = true
        pdfDescriptionLabeltextThree.leftAnchor.constraint(equalTo: pdfViewThree.rightAnchor,constant: 20).isActive = true
        
        
        


        
    }
    
    }
        
