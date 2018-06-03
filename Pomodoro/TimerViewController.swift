import UIKit
import SnapKit

class TimerViewController: UIViewController {
    lazy var timerView = TimerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(timerView)
        timerView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right)
        }
    }
}
