import Foundation

final class ItemViewModel {
    struct Item {
        var staticLabelText: String
        var dynamicLabelText: String?
        var imageName: String?

        init(_ staticLabelText: String = "固定ラベル", dynamicLabelText: String? = "動的ラベル", imageName: String? = "image") {
            self.staticLabelText = staticLabelText
            self.dynamicLabelText = dynamicLabelText
            self.imageName = imageName
        }

    }

    func getTenItems() -> [Item] {
        var items: [Item] = []
        items.append(Item())
        items.append(Item(dynamicLabelText: nil))
        items.append(Item(imageName: nil))
        items.append(Item(imageName: nil))
        items.append(Item(dynamicLabelText: nil, imageName: nil))
        items.append(Item())
        items.append(Item(imageName: nil))
        items.append(Item(dynamicLabelText: nil, imageName: nil))
        items.append(Item())
        items.append(Item(dynamicLabelText: nil))
        return items
    }

}
