// The MIT License (MIT)
//
// Copyright (c) 2015 James Tang (j@jamztang.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

open class KeyboardLayoutConstraint: NSLayoutConstraint {
    private var offset: CGFloat = 0
    
    private var keyboardVisibleHeight: CGFloat = 0 {
        didSet { constant = offset + keyboardVisibleHeight }
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        offset = constant
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
}

private extension KeyboardLayoutConstraint {
    
    @objc func keyboardWillShowNotification(notification: NSNotification) {
        guard let info = notification.userInfo,
            let keyboardFrame = info[UIKeyboardFrameEndUserInfoKey] as? NSValue
            else { return }
        
        keyboardVisibleHeight = keyboardFrame.cgRectValue.size.height
        adjustLayoutIfNeeded(with: notification.userInfo)
    }
    
    @objc func keyboardWillHideNotification(notification: NSNotification) {
        keyboardVisibleHeight = 0
        adjustLayoutIfNeeded(with: notification.userInfo)
    }
    
    func adjustLayoutIfNeeded(with userInfo: [AnyHashable : Any]?) {
        guard let userInfo = userInfo else { return }
        
        switch (userInfo[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber, userInfo[UIKeyboardAnimationCurveUserInfoKey] as? NSNumber) {
        case let (.some(duration), .some(curve)):
            UIView.animate(
                withDuration: TimeInterval(duration.doubleValue),
                delay: 0,
                options: UIViewAnimationOptions(rawValue: curve.uintValue),
                animations: { UIApplication.shared.keyWindow?.layoutIfNeeded() },
                completion: { _ in }
            )
        default: UIApplication.shared.keyWindow?.layoutIfNeeded()
        }
    }
}
