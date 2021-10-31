//
//  MediumViewController.swift
//  5thWeekWithContainerView
//
//  Created by Mustafa Berkay Kaya on 31.10.2021.
//

import UIKit

class MediumViewController: UIViewController {

    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var eggImage: UIImageView!
    
    private let boiledEgg = "eggBoiled.png"
    private var counter = 300.00
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true) 
    }
    
    @objc
    func countDown() {
        var newEgg = Egg(size: "Medium", typeOffBoil: 1, status: "unboiled")
        
        if counter > 0 {
        
            let minutes = Int(counter) / 60
            let seconds = counter - Double(minutes) * 60
            timeLabel.text = String(format: "%02i:%02i", minutes, Int(seconds))
            counter -= 1
        } else if counter == 0 {
            newEgg.status = "boiled"
            eggImage.image = UIImage(named: boiledEgg)
            timeLabel.text = "Bon appetit!"
            timer.invalidate()
        }
    }

}
