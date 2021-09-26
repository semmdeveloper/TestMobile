import UIKit

protocol MessageLiveChatProductCellDelegate {
    func increaseNumber(cell: MessageLiveChatProductCellDelegate,number : Int)
    func decreaseNumber(cell: MessageLiveChatProductCellDelegate,number : Int)
}

class MessageLiveChatProductCell : UITableViewCell {
    var delegate : MessageLiveChatProductCellDelegate?
    let minValue = 0
    var Messageproduct : Messageproduct? {
        didSet {
            

            messageTime.text = Messageproduct?.messageTime
            messageInfo.text = Messageproduct?.messageInfo
            messageName.text = Messageproduct?.messageName
            messageChats.text = Messageproduct?.messageChats
            messageImage.image = Messageproduct?.messageImage
           
            
         
           
 }
}
  
    private let View4 :UIView = {
        let myView=UIView(frame: CGRect(x: 7 , y: 8, width: 65, height: 65));
        myView.backgroundColor = Utils.chatColor
        myView.layer.cornerRadius=30
       return myView
        
    }()
    
    
    private let View2 :UIView = {
        let myView=UIView(frame: CGRect(x: UIScreen.main.bounds.width*0.35 , y: UIScreen.main.bounds.width*0.2500, width: UIScreen.main.bounds.width*0.32, height: 25));
        myView.backgroundColor = Utils.chatColor2
        myView.layer.cornerRadius=10
       return myView
        
    }()
    
    private let View3 :UIView = {
        let myView=UIView(frame: CGRect(x: 175, y: UIScreen.main.bounds.width*0.07, width: 8, height: 8));
        myView.backgroundColor = UIColor.systemPink
        myView.layer.cornerRadius=4
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
    
    private let messageChats: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
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
    
    private let messageImage: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "location")    )
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = false
        return imgView
    }()
    
  
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor=Utils.backGroundColor
        addSubview(View2)
        addSubview(View3)
        addSubview(View4)
        addSubview(messageName)
        addSubview(messageInfo)
        addSubview(messageTime)
        addSubview(messageChats)
        addSubview(messageImage)
        
        messageName.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 85, paddingBottom: 90, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)
        messageInfo.anchor(top: topAnchor, left: leftAnchor, bottom: messageName.bottomAnchor, right: nil, paddingTop: 40, paddingLeft: 85, paddingBottom: 0, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)
        messageTime.anchor(top: topAnchor, left: messageName.leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 230, paddingBottom: 85, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)
        messageChats.anchor(top: View2 .topAnchor, left: View2 .leftAnchor, bottom: View2.bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 45, paddingBottom: 5, paddingRight: 0, width: 1000, height: 1000, enableInsets: false)
                messageImage.anchor(top: View4 .topAnchor, left: View4 .leftAnchor, bottom: View4 .bottomAnchor, right: View4 .rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20, paddingRight: 20, width: 10, height: 10, enableInsets: false)

    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
