import UIKit

class TimerViewController: UIViewController {
    override func loadView() {
        self.view = TimerView(frame: .zero)
    }
}
