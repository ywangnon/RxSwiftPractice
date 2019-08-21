//
//  ViewController.swift
//  RxSwiftPractice
//
//  Created by Hansub Yoo on 20/08/2019.
//  Copyright © 2019 Hansub Yoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWillHide(_:)), name: UIResponder.keyboardDidChangeFrameNotification,
                                             object: nil)
    }

    @objc func keyboardWillHide(_ sender:Notification){
        self.view.frame.origin.y = -150
    }
}

