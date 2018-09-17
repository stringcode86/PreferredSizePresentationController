//
//  ViewController.swift
//  PreferredSizePresentationController
//
//  Created by Michael Inger on 17/09/2018.
//  Copyright © 2018 stringcode ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ModalDismissDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as? ModalDismissProtocol)?.modalDismissDelegate = self
    }
    
    func viewControllerDismissActionPressed(_ viewController: UIViewController?) {
        dismiss(animated: true)
    }

    @IBAction func demo2Action(_ sender: Any) {
        presentDemoAlert(style: .actionSheet)
    }
    
    @IBAction func demo3Action(_ sender: Any) {
        presentDemoAlert(style: .alert)
    }
    
    private func presentDemoAlert(style: UIAlertController.Style) {
        let sheet = UIAlertController(title: "Demo", message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", preferredStyle: style)
        sheet.addAction(UIAlertAction(title: "Action", style: .default))
        sheet.addAction(UIAlertAction(title: "Another action", style: .default))
        sheet.addAction(UIAlertAction(title: "Delete", style: .destructive))
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(sheet, animated: true)
    }
    
}

