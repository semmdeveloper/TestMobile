
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
        locationlabelText.textColor = UIColor.black
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
// MARK: -  UIImages
    
    let locationImage : UIImageView = {
        let locationImage = UIImageView()
        locationImage.image = UIImage(named: "11")
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
        return arrivedButton
    }()
    
//  MARK: All Setups
    
    func setups(){
        setupImg()
        setupText()
        setupNameLabelText()
        setupNameLabelTextTwoo()
        setupdataLabelText()
        setupdataLabelTextTwoo()
        setupButton()
        setupNumberlabeltext()
        setupDistanceLabelText()
        setupNumberlabeltextTwoo()
        setupDistanceLabelTextTwoo()
        setupLineView()
        setupLineViewTwoo()
        setupTimeLabelText()
        setupTimeLabelTextTwoo()
  

    }
    
    func setupLineView(){
        arrivedView.addSubview(lineView)
    }
    
    func setupLineViewTwoo(){
        arrivedView.addSubview(lineViewTwoo)
    }
    
    func setupImg (){
        arrivedView.addSubview(locationImage)
        
        
        locationImage.topAnchor.constraint(equalTo: arrivedView.topAnchor, constant: 30).isActive = true
        locationImage.leftAnchor.constraint(equalTo: arrivedView.leftAnchor, constant: 30).isActive = true
        locationImage.widthAnchor.constraint(equalToConstant: 12).isActive = true
        locationImage.heightAnchor.constraint(equalToConstant: 12).isActive = true
    }
    
    func setupText (){
        arrivedView.addSubview(locationlabelText)
        locationlabelText.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 30).isActive = true
        locationlabelText.leftAnchor.constraint(equalTo: locationImage.leftAnchor,constant: 25).isActive = true
        locationlabelText.widthAnchor.constraint(equalToConstant: 1000).isActive = true
        locationlabelText.heightAnchor.constraint(equalToConstant: 12).isActive = true
    }
    
    func setupNameLabelText(){
        arrivedView.addSubview(nameLabelText)
        nameLabelText.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 120).isActive = true
        nameLabelText.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 30).isActive = true
    }
    
    func setupNameLabelTextTwoo(){
        arrivedView.addSubview(nameLabelTextTwoo)
        nameLabelTextTwoo.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 120).isActive = true
        nameLabelTextTwoo.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -30).isActive = true
    }
    
    func setupdataLabelText(){
        arrivedView.addSubview(dataLabelText)
        dataLabelText.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 100).isActive = true
        dataLabelText.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 30).isActive = true
    }
    
    func setupdataLabelTextTwoo(){
        arrivedView.addSubview(dataLabelTextTwoo)
        dataLabelTextTwoo.topAnchor.constraint(equalTo: arrivedView.topAnchor,constant: 100).isActive = true
        dataLabelTextTwoo.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -30).isActive = true
    }
    
    func setupButton(){
        arrivedView.addSubview(arrivedButton)
    }
    
    func setupNumberlabeltext(){
        arrivedView.addSubview(numberLabelText)
        numberLabelText.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 60).isActive = true
        numberLabelText.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 40).isActive = true
    }
    
    func setupDistanceLabelText(){
        arrivedView.addSubview(distanceLabelText)
        distanceLabelText.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 60).isActive = true
        distanceLabelText.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -40).isActive = true
    }
    
    func setupNumberlabeltextTwoo(){
        arrivedView.addSubview(numberLabelTextTwoo)
        numberLabelTextTwoo.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 75).isActive = true
        numberLabelTextTwoo.leftAnchor.constraint(equalTo: arrivedView.leftAnchor,constant: 50).isActive = true
    }
    
    func setupDistanceLabelTextTwoo(){
        arrivedView.addSubview(distanceLabelTextTwoo)
        distanceLabelTextTwoo.topAnchor.constraint(equalTo: arrivedButton.topAnchor,constant: 75).isActive = true
        distanceLabelTextTwoo.rightAnchor.constraint(equalTo: arrivedView.rightAnchor,constant: -50).isActive = true
    }
    
    func setupTimeLabelText(){
        arrivedView.addSubview(timeLabelText)
        timeLabelText.bottomAnchor.constraint(equalTo: arrivedView.bottomAnchor,constant: -30).isActive = true
        timeLabelText.centerXAnchor.constraint(equalTo: arrivedView.centerXAnchor).isActive = true
        }
    
    func setupTimeLabelTextTwoo(){
        arrivedView.addSubview(timeLabelTextTwoo)
        timeLabelTextTwoo.bottomAnchor.constraint(equalTo: arrivedView.bottomAnchor,constant: -5).isActive = true
        timeLabelTextTwoo.centerXAnchor.constraint(equalTo: arrivedView.centerXAnchor).isActive = true
   
        }
    
  
    


    
    }
        
