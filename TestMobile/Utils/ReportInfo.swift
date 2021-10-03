

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










