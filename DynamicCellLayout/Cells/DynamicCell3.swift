import UIKit

final class DynamicCell3: UITableViewCell {

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var dynamicLabel: UILabel!
    @IBOutlet weak var dynamicView: UIView!
    @IBOutlet weak var dynamicImageView: UIImageView!
    
    @IBOutlet weak var dynamicViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var dynamicViewHeightConstraint: NSLayoutConstraint!

    @IBOutlet weak var dynamicImageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var dynamicImageHeightConstraint: NSLayoutConstraint!

    static func nib() -> UINib {
        return UINib(nibName: "DynamicCell3", bundle: nil)
    }

    static let identifier: String = "DynamicCell3"

    func update(item: ItemViewModel.Item) {
        staticLabel.text = item.staticLabelText
        
        if let text = item.dynamicLabelText {
            dynamicView.isHidden = false
            dynamicLabel.text = text
            dynamicViewTopConstraint.constant = 20
            dynamicViewHeightConstraint.constant = 30
        } else {
            dynamicView.isHidden = true
            dynamicLabel.text = nil
            dynamicViewTopConstraint.constant = 0
            dynamicViewHeightConstraint.constant = 0
        }
        
        if let imageName = item.imageName {
            dynamicImageView.image = UIImage(named: imageName)
            dynamicImageTopConstraint.constant = 20
            dynamicImageHeightConstraint.constant = 40
        } else {
            dynamicImageView.image = nil
            dynamicImageTopConstraint.constant = 0
            dynamicImageHeightConstraint.constant = 0
        }
    }

}
