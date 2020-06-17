import UIKit
import PlaygroundSupport

class Finally: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImageView()
        let winner = UILabel()
        
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "finally.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        winner.text = "WINNER!"
        winner.textColor = .gray
        winner.font = UIFont(name: "Arial", size: 62)
        winner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(winner)
        winner.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 70).isActive = true
        winner.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: -20).isActive = true
    }
}
