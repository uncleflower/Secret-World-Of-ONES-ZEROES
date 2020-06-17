import UIKit
import PlaygroundSupport

class BreakTheComputer: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImageView()
        image.image = UIImage(named: "break.jpg")
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
