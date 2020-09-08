import UIKit

class HomeHeaderView: UICollectionReusableView {
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    
    var titlelabel: UILabel = {
        var label = UILabel()
        label.text = "User"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subtitlelabel: UILabel = {
        var label = UILabel()
        label.text = "5"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstranits()
    }
    func setUpUI(){
        self.addSubview(stackView)
        stackView.addArrangedSubview(titlelabel)
        stackView.addArrangedSubview(subtitlelabel)
    }
    func setUpConstranits(){
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
