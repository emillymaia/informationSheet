//
//  SheetViewController.swift
//  informationSheet
//
//  Created by Emilly Maia on 14/06/22.
//

import UIKit
import SwiftUI

class SheetViewController: UIViewController, UISheetPresentationControllerDelegate {
    let swiftUIController = UIHostingController(rootView: SwiftUIView())
    override var sheetPresentationController: UISheetPresentationController {
        // swiftlint:disable force_cast
        presentationController as! UISheetPresentationController
        // swiftlint:enable force_cast
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        addChild(swiftUIController)
        view.addSubview(swiftUIController.view)
        setupConstraints()

        // Do any additional setup after loading the view.
        sheetPresentationController.delegate = self
        sheetPresentationController.selectedDetentIdentifier = .large
        sheetPresentationController.prefersGrabberVisible = true
        sheetPresentationController.detents = [
            .medium(),
            .large()]
    }
    
    fileprivate func setupConstraints() {
        swiftUIController.view.translatesAutoresizingMaskIntoConstraints = false
        swiftUIController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        swiftUIController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        swiftUIController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        swiftUIController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        swiftUIController.view.clipsToBounds = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
