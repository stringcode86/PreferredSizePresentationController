//
//  DemoViewController.swift
//  PreferredSizePresentationController
//
//  Created by Michael Inger on 17/09/2018.
//  Copyright © 2018 stringcode ltd. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController, ModalDismissProtocol, UIViewControllerTransitioningDelegate {

    weak var modalDismissDelegate: ModalDismissDelegate?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initialSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetup()
    }
    
    func initialSetup() {
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        modalDismissDelegate?.viewControllerDismissActionPressed(self)
    }
    
    @IBAction func acceptAction(_ sender: Any) {
        
    }
    
    // MARK: - UIViewControllerTransitioningDelegate
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return PreferredSizePresentationController(presentedViewController: presented, presenting: presenting)
    }
    
}
