
import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Utils.dashboardcolor
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.backgroundColor = .clear
        setups()
        pictureForReportText.isHidden = true
        pictureForReportView.isHidden = true
        pictureForReportViewTwoo.isHidden = true
        pictureForReportViewThree.isHidden = true
        pictureForReportViewFour.isHidden = true
        driverNotesText.isHidden = true
        pictureTextField.isHidden = true
    }
    
    //    MARK: - Report UIIMage
        
        let reportTrailerImage=ReportTrailerImage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
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
        let arrivedView = UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.0470, y: UIScreen.main.bounds.height*0.0100, width: UIScreen.main.bounds.width*0.9000, height: UIScreen.main.bounds.height*2));
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
    
    
    let reportDashedLeftIMageView=ReportDashedLeftIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let reportDashedRightIMageView=ReportDashedRightIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let reportDashedBackIMageView=ReportDashedBackIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let reportDashedFrontIMageView=ReportDashedFrontIMage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let picturePickupSelectedImageView=PicturePickupSelectedImage(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let dashedLeftViewSelectImage=dashedselectimageleft(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
//    MARK: - HomeViewLabel + ReportViewLabel + Point
    
    let homeViewLabel=HomeLabelText()
    
    let reportViewLabelText=ReportViewText()
    
    private let pickupPicturePoint=PickupPicturePoint()
    
//    MARK: - ReportButtons + ReportLabelsTexts
    
    private let reportCenterButton=ReportCenterButton()
    
    private let reportLeftButton=ReportButtons()
    
    private let reportRightButton=ReportButtons()
    
    private let reportBackButton=ReportButtons()
    
    private let reportFrontButton=ReportButtons()
    
    let reportCenterButtonText=ReportButtonText()
    
    let reportrightButtonText=ReportAllButtonText()
    
    let reportFrontButtonText=ReportAllButtonText()
    
    let reportBackButtonText=ReportAllButtonText()
    
//    MARK: - Pickup UIImageView
    
    private let pickupImageView=PickupUIimageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    private let pickupImageViewAllOne=PickupUIimageViewAll(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    private let pickupImageViewAllTwoo=PickupUIimageViewAll(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    private let pickupImageViewAllThree=PickupUIimageViewAll(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    private let pickupImageViewAllFour=PickupUIimageViewAll(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
//    MARK: - Pickup UIlabelTexts
    
    let pickupPictureFrontText=PickupPictureFrontLabelText()
    
    let pickupPictureRightText=PickupPictureRightLabelText()
    
    let pickupPictureLeftText=PickupPictureLeftLabelText()
    
    let pickupPictureBackText=PickupPictureBackLabelText()
    
    let pickupPictureInnerText=PickupPictureInnerLabelText()
    
    //    MARK: - PickupPicture Add Report Buttos
    
//    private let pictureReportButton=AddReportButton()
    
    private let pictureReportButton:UIButton={
         let pictureReportButton = UIButton()
        pictureReportButton.layer.cornerRadius = 12
        pictureReportButton.layer.borderWidth = 0
        pictureReportButton.backgroundColor = Utils.pickuppicturecolor
        pictureReportButton.setTitle("ADD REPORT", for: .normal)
        pictureReportButton.setTitleColor(UIColor.white, for: .normal)
        pictureReportButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        pictureReportButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 30, bottom: 0.0, right: 0.0)
        pictureReportButton.title(for: .normal)
        pictureReportButton .addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        pictureReportButton.translatesAutoresizingMaskIntoConstraints = false
        pictureReportButton.contentMode = .scaleAspectFill
         return pictureReportButton
     }()
     
     @objc func buttonClicked() {
         if pictureReportButton.isHighlighted{
             pictureReportButton.isHidden = true
             pictureForReportView.isHidden = false
             pictureForReportViewTwoo.isHidden = false
             pictureForReportViewThree.isHidden = false
             pictureForReportViewFour.isHidden = false
             driverNotesText.isHidden = false
             pictureForReportText.isHidden = false
             pictureTextField.isHidden = false
         }

     
     
      }
    
    
    
    let addreportPoint=AddReportPoint()
    
    let AddReportbuttontext=AddReportButtonText()
    
    //    MARK: - picture for report
    
  private  let pictureForReportText=PictureforReport()
    
    let pictureForReportView=PictureUIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let pictureForReportViewTwoo=PictureUIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let pictureForReportViewThree=PictureUIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let pictureForReportViewFour=PictureUIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    let pictureTextField=PictureTextField()
    
    let driverNotesText=PictureDriverNotesText()
    
    //    MARK: - Submit
    
    let submitButton=SubmitButton()
//   MARK: - Report Setups
    
    func setups(){
        reportView.addSubview(submitButton)
        reportView.addSubview(driverNotesText)
        reportView.addSubview(pictureTextField)
        reportView.addSubview(pictureForReportView)
        reportView.addSubview(pictureForReportViewTwoo)
        reportView.addSubview(pictureForReportViewThree)
        reportView.addSubview(pictureForReportViewFour)
        reportView.addSubview(pictureForReportText)
        addreportPoint.addSubview(AddReportbuttontext)
        pictureReportButton.addSubview(addreportPoint)
        reportView.addSubview(pictureReportButton)
        reportView.addSubview(pickupPictureFrontText)
        reportView.addSubview(pickupPictureRightText)
        reportView.addSubview(pickupPictureLeftText)
        reportView.addSubview(pickupPictureBackText)
        reportView.addSubview(pickupPictureInnerText)
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        scrollView.addSubview(reportView)
        homeView.addSubview(homeViewLabel)
        pickupPicturePoint.addSubview(picturePickupSelectedImageView)
        reportView.addSubview(reportViewLabelText)
        reportView.addSubview(pickupImageViewAllFour)
        reportView.addSubview(pickupImageView)
        reportView.addSubview(pickupImageViewAllThree)
        reportView.addSubview(pickupImageViewAllOne)
        reportView.addSubview(pickupPicturePoint)
        reportLeftButton.addSubview(dashedLeftView)
        reportView.addSubview(pickupImageViewAllTwoo)
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
        reportLeftButton.addSubview(dashedLeftViewSelectImage)
        reportRightButton.addSubview(reportrightButtonText)
        reportFrontButton.addSubview(reportFrontButtonText)
        reportBackButton.addSubview(reportBackButtonText)
        setupReportButtons()
    }
    

    
    
    

    
    func setupReportButtons(){
        
        //MARK: - Setup All Report UIButtons
        
        
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
        
        
        
        //MARK: - Setup All Report UIImages
        
        reportDashedLeftIMageView.centerXAnchor.constraint(equalTo: dashedBackView.centerXAnchor).isActive = true
        reportDashedLeftIMageView.bottomAnchor.constraint(equalTo: reportTrailerImage.bottomAnchor,constant: 20).isActive = true
        
        reportDashedFrontIMageView.centerYAnchor.constraint(equalTo: dashedLeftView.centerYAnchor).isActive = true
        reportDashedFrontIMageView.rightAnchor.constraint(equalTo: reportTrailerImage.leftAnchor,constant: -25).isActive = true
        
        reportDashedRightIMageView.centerXAnchor.constraint(equalTo: dashedFrontView.centerXAnchor).isActive = true
        reportDashedRightIMageView.bottomAnchor.constraint(equalTo: reportTrailerImage.topAnchor,constant: -5).isActive = true
        
        reportDashedBackIMageView.centerYAnchor.constraint(equalTo: dashedRightView.centerYAnchor).isActive = true
        reportDashedBackIMageView.rightAnchor.constraint(equalTo: reportTrailerImage.rightAnchor,constant:  33).isActive = true
        
        
        
        //MARK: - Setup All Report UILabelsTexts
        
        reportCenterButtonText.centerXAnchor.constraint(equalTo: reportCenterButton.centerXAnchor).isActive = true
        reportCenterButtonText.centerYAnchor.constraint(equalTo: reportCenterButton.centerYAnchor).isActive = true
        
        reportFrontButtonText.centerXAnchor.constraint(equalTo: reportFrontButton.centerXAnchor).isActive = true
        reportFrontButtonText.centerYAnchor.constraint(equalTo: reportFrontButton.centerYAnchor).isActive = true
        
        reportBackButtonText.centerXAnchor.constraint(equalTo: reportBackButton.centerXAnchor).isActive = true
        reportBackButtonText.centerYAnchor.constraint(equalTo: reportBackButton.centerYAnchor).isActive = true
        
        dashedLeftViewSelectImage.centerXAnchor.constraint(equalTo: reportLeftButton.centerXAnchor).isActive = true
        dashedLeftViewSelectImage.centerYAnchor.constraint(equalTo: reportLeftButton.centerYAnchor).isActive = true
        
        reportrightButtonText.centerXAnchor.constraint(equalTo: reportRightButton.centerXAnchor).isActive = true
        reportrightButtonText.centerYAnchor.constraint(equalTo: reportRightButton.centerYAnchor).isActive = true
        
//       MARK: -Trailer UIImage Setup
        
        reportTrailerImage.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        reportTrailerImage.topAnchor.constraint(equalTo: reportView.topAnchor,constant: 90).isActive = true
        
//        MARK: - HomeLabelText
        homeViewLabel.bottomAnchor.constraint(equalTo: reportView.topAnchor,constant: -20).isActive = true
        homeViewLabel.leftAnchor.constraint(equalTo: reportView.leftAnchor).isActive = true
        
 //        MARK: - Report Pickup PIcture and UIView UILabelText UIImages
        
        reportViewLabelText.topAnchor.constraint(equalTo: dashedBackView.bottomAnchor,constant: 25).isActive = true
        reportViewLabelText.leftAnchor.constraint(equalTo: reportView.leftAnchor,constant: 10).isActive = true
        
        pickupPicturePoint.widthAnchor.constraint(equalToConstant: 12).isActive = true
        pickupPicturePoint.heightAnchor.constraint(equalToConstant: 12).isActive = true
        pickupPicturePoint.centerYAnchor.constraint(equalTo: reportViewLabelText.centerYAnchor).isActive = true
        pickupPicturePoint.leftAnchor.constraint(equalTo: reportViewLabelText.rightAnchor,constant: 10).isActive = true
        
        picturePickupSelectedImageView.centerYAnchor.constraint(equalTo: pickupPicturePoint.centerYAnchor).isActive = true
        picturePickupSelectedImageView.centerXAnchor.constraint(equalTo: pickupPicturePoint.centerXAnchor).isActive = true

//        MARK: - Report PickupPicture UIImagesViews
        pickupImageView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.16).isActive = true
        pickupImageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.09).isActive = true
        pickupImageView.topAnchor.constraint(equalTo: reportViewLabelText.topAnchor,constant: 40).isActive = true
        pickupImageView.leftAnchor.constraint(equalTo: reportView.leftAnchor,constant: 10).isActive = true

        pickupImageViewAllOne.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.16).isActive = true
        pickupImageViewAllOne.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.09).isActive = true
        pickupImageViewAllOne.topAnchor.constraint(equalTo: reportViewLabelText.topAnchor,constant: 40).isActive = true
        pickupImageViewAllOne.leftAnchor.constraint(equalTo: pickupImageView.rightAnchor,constant: 4.3).isActive = true
        
        pickupImageViewAllTwoo.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.16).isActive = true
        pickupImageViewAllTwoo.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.09).isActive = true
        pickupImageViewAllTwoo.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        pickupImageViewAllTwoo.topAnchor.constraint(equalTo: reportViewLabelText.topAnchor,constant: 40).isActive = true
        
        pickupImageViewAllThree.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.16).isActive = true
        pickupImageViewAllThree.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.09).isActive = true
        pickupImageViewAllThree.topAnchor.constraint(equalTo: reportViewLabelText.topAnchor,constant: 40).isActive = true
        pickupImageViewAllThree.rightAnchor.constraint(equalTo: pickupImageViewAllFour.leftAnchor,constant: -4.3).isActive = true

        pickupImageViewAllFour.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.16).isActive = true
        pickupImageViewAllFour.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.09).isActive = true
        pickupImageViewAllFour.topAnchor.constraint(equalTo: reportViewLabelText.topAnchor,constant: 40).isActive = true
        pickupImageViewAllFour.rightAnchor.constraint(equalTo: reportView.rightAnchor,constant: -10).isActive = true
        
        //        MARK: - Report PickupPicture UILabelTexts
        
        pickupPictureFrontText.leftAnchor.constraint(equalTo: pickupImageView.leftAnchor,constant: 2).isActive = true
        pickupPictureFrontText.bottomAnchor.constraint(equalTo: pickupImageView.topAnchor,constant: -3).isActive = true
        
        pickupPictureRightText.leftAnchor.constraint(equalTo: pickupImageViewAllOne.leftAnchor,constant: 2).isActive = true
        pickupPictureRightText.bottomAnchor.constraint(equalTo: pickupImageViewAllOne.topAnchor,constant: -3).isActive = true
        
        pickupPictureLeftText.leftAnchor.constraint(equalTo: pickupImageViewAllTwoo.leftAnchor,constant: 2).isActive = true
        pickupPictureLeftText.bottomAnchor.constraint(equalTo: pickupImageViewAllTwoo.topAnchor,constant: -3).isActive = true
        
        
        pickupPictureBackText.leftAnchor.constraint(equalTo: pickupImageViewAllThree.leftAnchor,constant: 2).isActive = true
        pickupPictureBackText.bottomAnchor.constraint(equalTo: pickupImageViewAllThree.topAnchor,constant: -3).isActive = true
        
        pickupPictureInnerText.leftAnchor.constraint(equalTo: pickupImageViewAllFour.leftAnchor,constant: 2).isActive = true
        pickupPictureInnerText.bottomAnchor.constraint(equalTo: pickupImageViewAllFour.topAnchor,constant: -3).isActive = true
        
        //        MARK: - Report PickupPicture AddReportButtons
        
        pictureReportButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.70).isActive = true
        pictureReportButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        pictureReportButton.topAnchor.constraint(equalTo: pickupImageViewAllTwoo.bottomAnchor,constant: 20).isActive = true
        pictureReportButton.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        
        addreportPoint.widthAnchor.constraint(equalToConstant: 22).isActive = true
        addreportPoint.heightAnchor.constraint(equalToConstant: 22).isActive = true
        addreportPoint.centerYAnchor.constraint(equalTo: pictureReportButton.centerYAnchor).isActive = true
        addreportPoint.centerXAnchor.constraint(equalTo: pictureReportButton.centerXAnchor,constant: -60).isActive = true
        
        AddReportbuttontext.centerXAnchor.constraint(equalTo: addreportPoint.centerXAnchor).isActive = true
        AddReportbuttontext.centerYAnchor.constraint(equalTo: addreportPoint.centerYAnchor).isActive = true
        
        pictureForReportText.leftAnchor.constraint(equalTo: pickupImageView.leftAnchor).isActive = true
        pictureForReportText.topAnchor.constraint(equalTo: pictureReportButton.bottomAnchor,constant: 20).isActive = true
        
        //        MARK: - Picture for report view elements
        
        pictureForReportText.leftAnchor.constraint(equalTo: pickupImageView.leftAnchor).isActive = true
        pictureForReportText.topAnchor.constraint(equalTo: pictureReportButton.bottomAnchor,constant: 20).isActive = true
        
        pictureForReportView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.18).isActive = true
        pictureForReportView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.10).isActive = true
        pictureForReportView.topAnchor.constraint(equalTo: pictureForReportText.bottomAnchor,constant: 10).isActive = true
        pictureForReportView.leftAnchor.constraint(equalTo: pictureForReportText.leftAnchor).isActive = true
        
        pictureForReportViewTwoo.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.18).isActive = true
        pictureForReportViewTwoo.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.10).isActive = true
        pictureForReportViewTwoo.topAnchor.constraint(equalTo: pictureForReportText.bottomAnchor,constant: 10).isActive = true
        pictureForReportViewTwoo.leftAnchor.constraint(equalTo: pictureForReportView.rightAnchor,constant: 13).isActive = true
        
        pictureForReportViewThree.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.18).isActive = true
        pictureForReportViewThree.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.10).isActive = true
        pictureForReportViewThree.topAnchor.constraint(equalTo: pictureForReportText.bottomAnchor,constant: 10).isActive = true
        pictureForReportViewThree.rightAnchor.constraint(equalTo: pictureForReportViewFour.leftAnchor,constant: -10).isActive = true

        
        pictureForReportViewFour.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.18).isActive = true
        pictureForReportViewFour.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height*0.10).isActive = true
        pictureForReportViewFour.topAnchor.constraint(equalTo: pictureForReportText.bottomAnchor,constant: 10).isActive = true
        pictureForReportViewFour.rightAnchor.constraint(equalTo: reportView.rightAnchor,constant: -13).isActive = true
        
        pictureTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.80).isActive = true
        pictureTextField.heightAnchor.constraint(equalToConstant: 55).isActive = true
        pictureTextField.topAnchor.constraint(equalTo: pictureForReportViewThree.bottomAnchor,constant: 30).isActive = true
        pictureTextField.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        pictureTextField.leftAnchor.constraint(equalTo: reportView.leftAnchor,constant: 10).isActive = true
        pictureTextField.rightAnchor.constraint(equalTo: reportView.rightAnchor,constant: -10).isActive = true
        
        driverNotesText.leftAnchor.constraint(equalTo: pickupImageView.leftAnchor).isActive = true
        driverNotesText.topAnchor.constraint(equalTo: pictureForReportView.bottomAnchor,constant: 15).isActive = true
        
        
//        MARK: - Submit Button
        
        submitButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*0.70).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        submitButton.topAnchor.constraint(equalTo: pictureTextField.bottomAnchor,constant: 20).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: reportView.centerXAnchor).isActive = true
        
        
    }
    
}

