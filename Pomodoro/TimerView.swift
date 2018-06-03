import UIKit
import SnapKit

class TimerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        return stackView
    }()
    
    private let progressView: ProgressView = {
        let progressView = ProgressView()
        progressView.text = "2 minutes 15 seconds"
        progressView.progress = 0.5
        progressView.snp.makeConstraints { make in
            make.height.equalTo(progressView.snp.width)
        }
        return progressView
    }()
    
    private let timeRemainingLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.text = "1 minute 30 seconds remaining"
        return label
    }()
    
    private func setupSubviews() {
        [progressView, timeRemainingLabel].forEach { stackView.addArrangedSubview($0) }
        addSubview(stackView)
        progressView.snp.makeConstraints { make in
            make.leftMargin.equalTo(self.snp.leftMargin)
            make.rightMargin.equalTo(self.snp.rightMargin)
        }
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
}
