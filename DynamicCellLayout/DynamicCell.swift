import UIKit

final class DynamicCell: UITableViewCell {

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var dynamicView: UIView!
    @IBOutlet weak var dynamicImageView: UIImageView!

    static func nib() -> UINib {
        return UINib(nibName: "DynamicCell", bundle: nil)
    }

    static let identifier: String = "DynamicCell"

}
