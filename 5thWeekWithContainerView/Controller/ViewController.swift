//
//  ViewController.swift
//  5thWeekWithContainerView
//
//  Created by Mustafa Berkay Kaya on 31.10.2021.
//

import UIKit

class ViewController: UIViewController {

    var boilingType = -1
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var softContainerView: UIView!
    @IBOutlet private weak var coddledContainerView: UIView!
    @IBOutlet private weak var normalContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        softContainerView.alpha = 0
        normalContainerView.alpha = 0
        coddledContainerView.alpha = 0
        timeLabel.isHidden = true
        
    }
    
    @IBAction private func buttonTapped(_ sender: Any) {
        if  boilingType == 0 {
            performSegue(withIdentifier: "toSoft", sender: nil)
        } else if boilingType == 1 {
            performSegue(withIdentifier: "toMedium", sender: nil)
        } else if boilingType == 2 {
            performSegue(withIdentifier: "toCoddled", sender: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Please select the boiling range.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction private func segmentSelected(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boilingType = 0
            timeLabel.isHidden = false
            timeLabel.text = "04:00"
        case 1:
            boilingType = 1
            timeLabel.isHidden = false
            timeLabel.text = "05:00"
        case 2:
            boilingType = 2
            timeLabel.isHidden = false
            timeLabel.text = "06:00"
            
        default:
            boilingType = -1
        
        }
    }
    
}
