

import UIKit

protocol MessagechatProductCellDelegate {
    func increaseNumber(cell: MessagechatProductCellDelegate,number : Int)
    func decreaseNumber(cell: MessagechatProductCellDelegate,number : Int)
}

class MessagechatproductCell : UITableViewCell {
    var delegate : MessagechatProductCellDelegate?
    let minValue = 0
    var Messageproduct : Messageproduct? {
        didSet {
            

            messageTime.text = Messageproduct?.messageTime
            messageInfo.text = Messageproduct?.messageInfo
            messageName.text = Messageproduct?.messageName
         
           
 }
}
    private let View :UIView = {
        let myView=UIView(frame: CGRect(x: 7 , y: 8, width: 65, height: 65));
        myView.backgroundColor = Utils.imgcolor
        myView.layer.cornerRadius=30
       return myView
        
    }()

    private let messageName: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let messageInfo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 2
        lbl.lineBreakMode = .byWordWrapping
        return lbl
    }()
    
    private let messageTime: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
       
        return lbl
    }()
    
  
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor=Utils.backGroundColor
        addSubview(View)
        addSubview(messageName)
        addSubview(messageInfo)
        addSubview(messageTime)
        
        messageName.anchor(top: topAnchor, left: View.leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 80, paddingBottom: 25, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)
        messageInfo.anchor(top: topAnchor, left: View.leftAnchor, bottom: messageName.bottomAnchor, right: nil, paddingTop: 40, paddingLeft: 80, paddingBottom: 0, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)
        messageTime.anchor(top: topAnchor, left: messageName.leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 230, paddingBottom: 30, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)

    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
