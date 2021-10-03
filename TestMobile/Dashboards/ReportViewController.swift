
import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Utils.dashboardcolor
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.backgroundColor = .clear
        setups()
    }
//    MARK: - UIScrollView HomeView ReportView
    
    private let scrollView: UIScrollView = {
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        scrollView.contentSize = CGSize(width: 0, height: 2000)
        return scrollView
        }()
    
    private let homeView: UIView = {
        let homeView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0, y: -100, width: UIScreen.main.bounds.width*10, height: UIScreen.main.bounds.height*10));
        homeView.layer.cornerRadius = 0
        homeView.backgroundColor = Utils.dashboardcolor
        return homeView
    }()
    
    private let reportView: UIView = {
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.0100, width: UIScreen.main.bounds.width*0.9000, height: UIScreen.main.bounds.height*0.9200));
        arrivedView.layer.cornerRadius = 15
        arrivedView.backgroundColor = UIColor.white
        return arrivedView
    }()
    
//    MARK: - Dashed LIne All Views + UIImages
    
    private let dashedLeftView: UIView = {
        let dashedView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50));
        var yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.gray.cgColor
        yourViewBorder.lineDashPattern = [6, 6]
        yourViewBorder.frame = dashedView.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(roundedRect: dashedView.bounds,cornerRadius: 10).cgPath
        dashedView.layer.addSublayer(yourViewBorder)
        dashedView.backgroundColor = UIColor.white
        return dashedView
    }()
    
    private let dashedRightView: UIView = {
        let dashedView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50));
        var yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.gray.cgColor
        yourViewBorder.lineDashPattern = [6, 6]
        yourViewBorder.frame = dashedView.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(roundedRect: dashedView.bounds,cornerRadius: 10).cgPath
        dashedView.layer.addSublayer(yourViewBorder)
        dashedView.backgroundColor = UIColor.white
        return dashedView
    }()
    
    
    private let dashedFrontView: UIView = {
        let dashedView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50));
        var yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.gray.cgColor
        yourViewBorder.lineDashPattern = [6, 6]
        yourViewBorder.frame = dashedView.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(roundedRect: dashedView.bounds,cornerRadius: 10).cgPath
        dashedView.layer.addSublayer(yourViewBorder)
        dashedView.backgroundColor = UIColor.white
        return dashedView
    }()
    
    private let dashedBackView: UIView = {
        let dashedView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50));
        var yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.gray.cgColor
        yourViewBorder.lineDashPattern = [6, 6]
        yourViewBorder.frame = dashedView.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(roundedRect: dashedView.bounds,cornerRadius: 10).cgPath
        dashedView.layer.addSublayer(yourViewBorder)
        dashedView.backgroundColor = UIColor.white
        return dashedView
    }()
    
    private let dashedCenterView: UIView = {
        let dashedView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50));
        var yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.white.cgColor
        yourViewBorder.lineDashPattern = [6, 6]
        yourViewBorder.frame = dashedView.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(roundedRect: dashedView.bounds,cornerRadius: 10).cgPath
        dashedView.layer.addSublayer(yourViewBorder)
        return dashedView
    }()
    
//    MARK: - Dashed + UIImages
    
    let reportDashedLeftIMageView=ReportDashedLeftIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let reportDashedRightIMageView=ReportDashedRightIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let reportDashedBackIMageView=ReportDashedBackIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let reportDashedFrontIMageView=ReportDashedFrontIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    
    
    
    

    
//    MARK: - Report UIIMage
    
    let reportTrailerImage=ReportTrailerImage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
//    MARK: - ReportButtons + ReportUIImages + ReportLabels
    
    private let reportCenterButton=ReportCenterButton()
    
    private let reportLeftButton=ReportButtons()
    
    private let reportRightButton=ReportButtons()
    
    private let reportBackButton=ReportButtons()
    
    private let reportFrontButton=ReportButtons()
    
    let reportCenterButtonText=ReportButtonText()
    
    let reportrightButtonText=ReportAllButtonText()
    
    let reportLeftButtonText=ReportAllButtonText()
    
    let reportFrontButtonText=ReportAllButtonText()
    
    let reportBackButtonText=ReportAllButtonText()
    
    
    

    
//   MARK: - Report Setups
    
    func setups(){
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        scrollView.addSubview(reportView)
        reportLeftButton.addSubview(dashedLeftView)
        reportRightButton.addSubview(dashedRightView)
        reportCenterButton.addSubview(dashedCenterView)
        reportFrontButton.addSubview(dashedFrontView)
        reportBackButton.addSubview(dashedBackView)
        reportView.addSubview(reportTrailerImage)
        reportView.addSubview(reportCenterButton)
        reportCenterButton.addSubview(reportCenterButtonText)
        reportView.addSubview(reportFrontButton)
        reportView.addSubview(reportBackButton)
        reportView.addSubview(reportLeftButton)
        reportView.addSubview(reportRightButton)
        reportView.addSubview(reportDashedBackIMageView)
        reportView.addSubview(reportDashedLeftIMageView)
        dashedFrontView.addSubview(reportDashedRightIMageView)
        reportView.addSubview(reportDashedFrontIMageView)
        reportLeftButton.addSubview(reportLeftButtonText)
        reportRightButton.addSubview(reportrightButtonText)
        reportFrontButton.addSubview(reportFrontButtonText)
        reportBackButton.addSubview(reportBackButtonText)
        setupReportButtons()
    }
    

    
    
    
//MARK: - Setup UIButtons UIImages UILabels
    
    func setupReportButtons(){
        reportDashedLeftIMageView.centerXAnchor.constraint(equalTo: dashedBackView.centerXAnchor).isActive = true
        reportDashedLeftIMageView.bottomAnchor.constraint(equalTo: reportTrailerImage.bottomAnchor,constant: 20).isActive = true
        
        reportDashedFrontIMageView.centerYAnchor.constraint(equalTo: dashedLeftView.centerYAnchor).isActive = true
        reportDashedFrontIMageView.rightAnchor.constraint(equalTo: reportTrailerImage.leftAnchor,constant: -25).isActive = true
        
        reportDashedRightIMageView.centerXAnchor.constraint(equalTo: dashedFrontView.centerXAnchor).isActive = true
        reportDashedRightIMageView.bottomAnchor.constraint(equalTo: reportTrailerImage.topAnchor,constant: -5).isActive = true
        
        reportDashedBackIMageView.centerYAnchor.constraint(equalTo: dashedRightView.centerYAnchor).isActive = true
        reportDashedBackIMageView.rightAnchor.constraint(equalTo: reportTrailerImage.rightAnchor,constant:  33).isActive = true
        
        reportCenterButton.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        reportCenterButton.topAnchor.constraint(equalTo: reportView.topAnchor,constant: 150).isActive = true
        reportCenterButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        reportCenterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        reportFrontButton.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        reportFrontButton.topAnchor.constraint(equalTo: reportView.topAnchor,constant: 20).isActive = true
        reportFrontButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        reportFrontButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        reportBackButton.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        reportBackButton.bottomAnchor.constraint(equalTo: reportTrailerImage.bottomAnchor,constant: 75).isActive = true
        reportBackButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        reportBackButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        reportLeftButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        reportLeftButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        reportLeftButton.topAnchor.constraint(equalTo: reportView.topAnchor,constant: 210).isActive = true
        reportLeftButton.rightAnchor.constraint(equalTo: reportTrailerImage.leftAnchor,constant: -40).isActive = true
        
        reportRightButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        reportRightButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        reportRightButton.topAnchor.constraint(equalTo: reportView.topAnchor,constant: 210).isActive = true
        reportRightButton.leftAnchor.constraint(equalTo: reportTrailerImage.rightAnchor,constant: 40).isActive = true
        
        reportCenterButtonText.centerXAnchor.constraint(equalTo: reportCenterButton.centerXAnchor).isActive = true
        reportCenterButtonText.centerYAnchor.constraint(equalTo: reportCenterButton.centerYAnchor).isActive = true
        
        reportFrontButtonText.centerXAnchor.constraint(equalTo: reportFrontButton.centerXAnchor).isActive = true
        reportFrontButtonText.centerYAnchor.constraint(equalTo: reportFrontButton.centerYAnchor).isActive = true
        
        reportBackButtonText.centerXAnchor.constraint(equalTo: reportBackButton.centerXAnchor).isActive = true
        reportBackButtonText.centerYAnchor.constraint(equalTo: reportBackButton.centerYAnchor).isActive = true
        
        reportLeftButtonText.centerXAnchor.constraint(equalTo: reportLeftButton.centerXAnchor).isActive = true
        reportLeftButtonText.centerYAnchor.constraint(equalTo: reportLeftButton.centerYAnchor).isActive = true
        
        reportrightButtonText.centerXAnchor.constraint(equalTo: reportRightButton.centerXAnchor).isActive = true
        reportrightButtonText.centerYAnchor.constraint(equalTo: reportRightButton.centerYAnchor).isActive = true
        
//       MARK: -Trailer UIImage Setup
        
        reportTrailerImage.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        reportTrailerImage.topAnchor.constraint(equalTo: reportView.topAnchor,constant: 90).isActive = true
        
        
    }
    
}

