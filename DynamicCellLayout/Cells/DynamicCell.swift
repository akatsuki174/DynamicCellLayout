import UIKit

final class DynamicCell: UITableViewCell {

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var dynamicLabel: UILabel!
    @IBOutlet weak var dynamicView: UIView!
    @IBOutlet weak var dynamicImageView: UIImageView!
    
    @IBOutlet weak var dynamicLabelShowConstraint: NSLayoutConstraint!
    @IBOutlet weak var dynamicLabelHideConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var imageShowConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageHideConstraint: NSLayoutConstraint!
    
    static func nib() -> UINib {
        return UINib(nibName: "DynamicCell", bundle: nil)
    }

    static let identifier: String = "DynamicCell"

    func update(item: ItemViewModel.Item) {
        staticLabel.text = item.staticLabelText
        
        if let text = item.dynamicLabelText {
            dynamicView.isHidden = false
            dynamicLabel.text = text
            dynamicLabelShowConstraint.priority = UILayoutPriority.defaultHigh
            dynamicLabelHideConstraint.priority = UILayoutPriority.defaultLow
        } else {
            dynamicView.isHidden = true
            dynamicLabelShowConstraint.priority = UILayoutPriority.defaultLow
            dynamicLabelHideConstraint.priority = UILayoutPriority.defaultHigh
        }
        
        if let imageName = item.imageName {
            dynamicImageView?.isHidden = false
            dynamicImageView.image = UIImage(named: imageName)
            imageShowConstraint.priority = UILayoutPriority.defaultHigh
            imageHideConstraint.priority = UILayoutPriority.defaultLow
        } else {
            dynamicImageView?.isHidden = true
            imageShowConstraint.priority = UILayoutPriority.defaultLow
            imageHideConstraint.priority = UILayoutPriority.defaultHigh
        }
    }

}
