import UIKit

public final class SampleButton: UIButton {
    
    public init() {
        super.init(frame: .zero)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        layer.borderWidth = 0
        setTitleColor(UIColor.black, for: .normal)
        setTitle("test", for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
extension SampleButton: UIViewRepresentable {

    public func makeUIView(context: Context) -> UIView {
        return self
    }
    
    public func updateUIView(_ view: UIView, context: Context) {
    }
}

@available(iOS 13.0, *)
public struct SampleButton_Preview: PreviewProvider {

    public static var previews: some View {
        SampleButton()
    }
}
#endif
