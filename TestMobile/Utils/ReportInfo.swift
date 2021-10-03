
//MARK: - ReportViewButtons
import UIKit
class ReportButtons: UIButton {
    override init(frame: CGRect) {
        
            super.init(frame: frame)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
            self.layer.borderColor = UIColor.white.cgColor
            self.title(for: .normal)
            self.translatesAutoresizingMaskIntoConstraints = false
            self.contentMode = .scaleAspectFill
        
        
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportCenterButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.clear.cgColor
        self.title(for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
  
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - ReportViewLabels

class ReportButtonText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.white
        self.text = "+"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 40)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportAllButtonText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.gray
        self.text = "+"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 40)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportViewText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.textColor = UIColor.gray
        self.text = "Pickup pictures"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.boldSystemFont(ofSize: 12)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - ReportViewUIImages
class ReportTrailerImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "Trailer")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportDashedLeftIMage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "front")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportDashedRightIMage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "back")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportDashedBackIMage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "left")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ReportDashedFrontIMage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "right")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class dashedselectimageleft: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "dashedselectimage")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
// MARK: - HomeViewLabelText
class HomeLabelText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.textColor = UIColor.black
        self.text = "Upload Photo"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.boldSystemFont(ofSize: 18)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
// MARK: - ReportView Pickup Picture Point
class PickupPicturePoint: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.green
        self.layer.cornerRadius=6
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFit
 
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - ReportView Pickup Picture Point Selected UIImage

class PicturePickupSelectedImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "select")
        self.tintColor = Utils.lblbuttonColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - PickupPicture UIImageView

class PickupUIimageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.backgroundColor = Utils.buttonColor
        self.layer.cornerRadius = 10
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PickupUIimageViewAll: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.backgroundColor = Utils.pickuppicturecolor
        self.layer.cornerRadius = 10
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - PickupPicture UILabelTexts

class PickupPictureFrontLabelText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.gray
        self.text = "front"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 8)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PickupPictureRightLabelText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.gray
        self.text = "right"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 8)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PickupPictureLeftLabelText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.gray
        self.text = "left"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 8)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PickupPictureBackLabelText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.gray
        self.text = "back"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 8)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PickupPictureInnerLabelText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.gray
        self.text = "inner"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 8)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - ADD Report Buttons Pickup Picture Type

class SubmitButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 15
        self.layer.borderWidth = 0
        self.backgroundColor = Utils.lblbuttonColor
        self.setTitle("Submit", for: .normal)
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0.0, right: 0.0)
        self.title(for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


   

class AddReportPoint: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = Utils.buttonColor
        self.layer.cornerRadius=10
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFit
 
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class AddReportButtonText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect()
        self.textColor = UIColor.white
        self.text = "+"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        self.font = UIFont.boldSystemFont(ofSize: 10)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: -  ADD report label text TextField

class PictureforReport: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.textColor = UIColor.gray
        self.text = "Picture for report"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.boldSystemFont(ofSize: 12)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PictureUIImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.backgroundColor = UIColor.gray
        self.layer.cornerRadius = 10
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PictureTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.font = UIFont.systemFont(ofSize: 15)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray.cgColor
        self.layer.cornerRadius = 10
        self.autocorrectionType = UITextAutocorrectionType.no
        self.keyboardType = UIKeyboardType.default
        self.returnKeyType = UIReturnKeyType.done
        self.clearButtonMode = UITextField.ViewMode.whileEditing
        self.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PictureDriverNotesText: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.textColor = UIColor.gray
        self.text = "Driver Notes"
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.boldSystemFont(ofSize: 12)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}






