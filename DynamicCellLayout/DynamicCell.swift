import UIKit

final class DynamicCell: UITableViewCell {

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var dynamicLabel: UILabel!
    @IBOutlet weak var dynamicImageView: UIImageView!

    static func nib() -> UINib {
        return UINib(nibName: "DynamicCell", bundle: nil)
    }

    static let identifier: String = "DynamicCell"

    func update(item: Item) {
        staticLabel.text = item.staticLabelText
        dynamicLabel.text = item.dynamicLabelText
        dynamicImageView.image = UIImage(named: item.imageName ?? "")
    }

}
