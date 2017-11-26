import UIKit

final class DynamicCell2: UITableViewCell {

    @IBOutlet weak var staticLabel: UILabel!
    @IBOutlet weak var dynamicLabel: UILabel!
    @IBOutlet weak var dynamicView: UIView!
    @IBOutlet weak var dynamicImageView: UIImageView!
    
    @IBOutlet var staticLabelToDynamicViewConstraint: NSLayoutConstraint!   // A to B
    @IBOutlet var staticLabelToDynamicImageConstraint: NSLayoutConstraint!  // A to C
    @IBOutlet var dynamicViewToDynamicImageConstraint: NSLayoutConstraint!  // B to C
    @IBOutlet var staticLabelToBottomConstraint: NSLayoutConstraint!        // A to Bottom
    @IBOutlet var dynamicViewToBottomConstraint: NSLayoutConstraint!        // B to Bottom
    @IBOutlet var dynamicImageToBottomConstraint: NSLayoutConstraint!       // C to Bottom

    @IBOutlet var dynamicViewHeightConstraint: NSLayoutConstraint!          // B Height
    @IBOutlet var imageViewHeightConstraint: NSLayoutConstraint!            // C Height

    static func nib() -> UINib {
        return UINib(nibName: "DynamicCell2", bundle: nil)
    }

    static let identifier: String = "DynamicCell2"

    func update(item: ItemViewModel.Item) {
        staticLabel.text = item.staticLabelText

        if let text = item.dynamicLabelText {
            dynamicLabel.text = text
            dynamicViewHeightConstraint.isActive = true                 // B Height
            staticLabelToDynamicViewConstraint.isActive = true          // A to B
            staticLabelToDynamicImageConstraint.isActive = false        // A to C
            staticLabelToBottomConstraint.isActive = false              // A to Bottom
            dynamicViewToBottomConstraint.isActive = false              // B to Bottom

            if let imageName = item.imageName {
                dynamicImageView.image = UIImage(named: imageName)
                imageViewHeightConstraint.isActive = true               // C Height
                dynamicViewToDynamicImageConstraint.isActive = true     // B to C
                dynamicImageToBottomConstraint.isActive = true          // C to Bottom
            } else {
                imageViewHeightConstraint.isActive = false              // C Height
                dynamicViewToDynamicImageConstraint.isActive = false    // B to C
                dynamicImageToBottomConstraint.isActive = false         // C to Bottom
            }
        } else {
            dynamicViewHeightConstraint.isActive = false                // B Height
            staticLabelToDynamicViewConstraint.isActive = false         // A to B
            dynamicViewToDynamicImageConstraint.isActive = false        // B to C
            dynamicViewToBottomConstraint.isActive = false              // B to Bottom

            if let imageName = item.imageName {
                dynamicImageView.image = UIImage(named: imageName)
                imageViewHeightConstraint.isActive = true               // C Height
                staticLabelToDynamicImageConstraint.isActive = true     // A to C
                staticLabelToBottomConstraint.isActive = false          // A to Bottom
                dynamicImageToBottomConstraint.isActive = true          // C to Bottom
            } else {
                imageViewHeightConstraint.isActive = false              // C Height
                staticLabelToDynamicImageConstraint.isActive = false    // A to C
                staticLabelToBottomConstraint.isActive = true           // A to Bottom
                dynamicImageToBottomConstraint.isActive = false         // C to Bottom
            }
        }

    }

}
