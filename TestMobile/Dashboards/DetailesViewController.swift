
import UIKit
import MapKit

class DetailesViewController: UIViewController, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        view.backgroundColor = Utils.dashboardcolor
        self.navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.isTranslucent = true
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)


        
   
        
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

// MARK: - Map
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let mapView = MKMapView()
        let leftMargin:CGFloat = 0
        let topMargin:CGFloat = -70
        let mapWidth:CGFloat = 376
        let mapHeight:CGFloat = 327
        mapView.frame = CGRect(x: leftMargin, y: topMargin, width: mapWidth, height: mapHeight)
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        scrollView.addSubview(mapView)

    }
    
    private let stackView :UIStackView = {
        let stackView = UIStackView(frame: CGRect(x: UIScreen.main.bounds.width*0.05 , y: 220, width: UIScreen.main.bounds.width*0.90, height: UIScreen.main.bounds.height*0.3300));
        stackView.backgroundColor = UIColor.white
        stackView.layer.cornerRadius=25
        stackView.translatesAutoresizingMaskIntoConstraints = true
        return stackView
    }()
    
    }
        
