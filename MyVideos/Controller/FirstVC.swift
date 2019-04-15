//
//  FirstVC.swift
//


import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var tedImageView: UIImageView!
    @IBOutlet weak var letsGoButton: UIButton!
    @IBOutlet weak var letsGoButtonHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letsGoButton.isHidden = true
        letsGoButton.clipsToBounds = true
        letsGoButtonHeightConstraint.constant = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 0.4) {
            self.tedImageView.alpha = 1
            self.letsGoButton.alpha = 1
        }
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if letsGoButton.isHidden {
            letsGoButton.isHidden = false
            letsGoButtonHeightConstraint.constant = 42
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIView.animate(withDuration: 0.2) {
            self.tedImageView.alpha = 0
            self.letsGoButton.alpha = 0
        }
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
