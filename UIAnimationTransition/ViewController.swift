//
//  ViewController.swift
//  UIAnimationTransition
//
//  Created by Vijay Singh on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var planeImage: UIImageView!
    
    var animationView: UIView!
    var newView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      //create new view
    planeDepart()
     
    }
    
    func planeDepart() {
      let originalCenter = planeImage.center
        UIView.animateKeyframes(withDuration: 5, delay: 0.0, options: [.repeat],
        animations: {
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25,
      animations: {
        self.planeImage.center.x += 80.0
        self.planeImage.center.y -= 10.0
      })
        UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.4) {
            self.planeImage.transform = CGAffineTransform(rotationAngle: -.pi / 8)
          }
          
        UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
              self.planeImage.center.x += 200.0
              self.planeImage.center.y -= 50.0
              self.planeImage.alpha = 0.0
          }
        UIView.addKeyframe(withRelativeStartTime: 0.51, relativeDuration: 0.01) {
              self.planeImage.transform = .identity
              self.planeImage.center = CGPoint(x: 0.0, y: originalCenter.y)
            }
        UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.45) {
              self.planeImage.alpha = 1.0
              self.planeImage.center = originalCenter
            }
    },
        completion: nil
      )
    }


}

