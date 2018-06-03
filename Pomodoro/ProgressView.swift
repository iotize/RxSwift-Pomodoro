import UIKit
import UICircularProgressRing

class ProgressView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var text: String? {
        get {
            return label.text
        }
        set {
            label.text = newValue
        }
    }
    
    /// From 0 to 1
    var progress: Float {
        get {
            return Float(progressView.value)
        }
        set {
            progressView.value = CGFloat(newValue)
        }
    }
    
    private let progressView: UICircularProgressRingView = {
        let progressView = UICircularProgressRingView()
        progressView.innerRingColor = .red
        progressView.outerRingColor = .white
        progressView.maxValue = 1
        progressView.startAngle = 270
        progressView.shouldShowValueText = false
        return progressView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .caption2)
        return label
    }()
    
    private func setupSubviews() {
        [progressView, label].forEach { addSubview($0) }
        progressView.snp.makeConstraints { make in
            make.edges.equalTo(self.snp.edges)
        }
        label.snp.makeConstraints { make in
            make.center.equalTo(self.snp.center)
        }
    }
}
