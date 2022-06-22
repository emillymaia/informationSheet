//
//  ViewController.swift
//  informationSheet
//
//  Created by Emilly Maia on 10/06/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(configuration: .filled(), primaryAction: .init(handler: { _ in
            let storyboard = UIStoryboard(name: "Sheet", bundle: nil)
            let sheetPresenationController = storyboard.instantiateViewController(withIdentifier: "SheetViewController")
            self.present(sheetPresenationController, animated: true, completion: nil)
        }))
        button.setTitle("Present Sheet", for: .normal)
        button.configuration?.cornerStyle = .capsule
        view.addSubview(button)
        // setup constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }

}
