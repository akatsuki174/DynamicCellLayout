import Foundation

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
