
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myText = UILabel()
        myText.text = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        view.addSubview(myText)
        myText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
          myText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          myText.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

