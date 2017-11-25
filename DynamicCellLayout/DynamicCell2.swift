import UIKit

final class DynamicCell2: UITableViewCell {

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var dynamicLabel: UILabel!
    @IBOutlet weak var dynamicView: UIView!
    @IBOutlet weak var dynamicImageView: UIImageView!
    
    @IBOutlet var staticLabelToDynamicViewConstraint: NSLayoutConstraint!
    @IBOutlet var staticLabelToDynamicImageConstraint: NSLayoutConstraint!
    @IBOutlet var dynamicViewToDynamicImageConstraint: NSLayoutConstraint!
    @IBOutlet var dynamicViewToBottomConstraint: NSLayoutConstraint!

    @IBOutlet var dynamicViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet var imageViewHeightConstraint: NSLayoutConstraint!

    static func nib() -> UINib {
        return UINib(nibName: "DynamicCell2", bundle: nil)
    }

    static let identifier: String = "DynamicCell2"

    func update(item: ItemViewModel.Item) {
    }

}
