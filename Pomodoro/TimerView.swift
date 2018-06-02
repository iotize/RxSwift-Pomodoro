import UIKit

class TimerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let timeRemainingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.text = "1 minute 30 seconds remaining"
        return label
    }()
    
    private func setupSubviews() {
        addSubview(timeRemainingLabel)
        NSLayoutConstraint.activate([
            timeRemainingLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            timeRemainingLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
