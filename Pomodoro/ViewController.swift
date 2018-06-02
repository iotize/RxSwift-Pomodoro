import UIKit

class ViewController: UIViewController {
    override func loadView() {
        self.view = TimerView(frame: .zero)
    }
}
