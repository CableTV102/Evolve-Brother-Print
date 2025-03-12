import Foundation

@objc public class EvoPrint: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
