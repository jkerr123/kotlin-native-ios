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
        let plat = Platform()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.font = label.font.withSize(25)
        label.text = plat.name()
        view.addSubview(label)
    }


}

