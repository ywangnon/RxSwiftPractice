import UIKit
import RxSwift
import UserNotifications

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}

example(of: "just, of, form") {
    let one = 1
    let two = 2
    let three = 3
    
    let observable: Observable<Int> = Observable<Int>.just(one)
    
    let observable2 = Observable.of(one, two, three)
    
    let observable3 = Observable.of([one, two, three])
    
    let observable4 = Observable.from([one, two, three])
}

let observer = NotificationCenter.default.addObserver(
    forName: UIResponder.keyboardDidChangeFrameNotification,
    object: nil,
    queue: nil) { (notification) in
        
}

