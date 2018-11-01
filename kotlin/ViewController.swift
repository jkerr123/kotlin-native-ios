//
//  ViewController.swift
//  kotlin
//
//  Created by Jamie Kerr on 01/11/2018.
//  Copyright © 2018 Jamie Kerr. All rights reserved.
//

import UIKit
import common2

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filter = Filter()
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.font = label.font.withSize(15)
        let list = ["Monkey", "Tarantula", "Software", "Frijj","Cat", "Hi", "Pi"]
        let filtered = filter.filterLength(input: list, limit: 5)
        label.text = "Result is \(filtered))"
        view.addSubview(label)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let platform = Platform()
        let alert = UIAlertController(title: "Hello", message: "Kotlin Native on \(platform.name())", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

