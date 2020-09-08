import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_avatar")
        imageview.layer.cornerRadius = 4
        imageview.clipsToBounds = true
        imageview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
       // imageview.backgroundColor = UIColor(red: 161/255, green: 132/255, blue: 96/255, alpha: 1)
        return imageview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Manh"
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var data: User! {
        didSet {
            filldata()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.addSubview(avatarImageView)
        self.addSubview(nameLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            avatarImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
                        
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            nameLabel.topAnchor.constraint(equalTo: self.avatarImageView.bottomAnchor, constant: 10),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder	)
    }
    func filldata(){
        if data == nil {return}
        
        avatarImageView.image = UIImage(named: data.avatar)
        nameLabel.text = data.name
    }
}
