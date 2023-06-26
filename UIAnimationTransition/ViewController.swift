//
//  ViewController.swift
//  UIAnimationTransition
//
//  Created by Vijay Singh on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    
    var animationView: UIView!
    var newView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animationView = UIView(frame: view.bounds)
        animationView.frame = view.bounds
        view.addSubview(animationView)
        newView = UIImageView(image: UIImage(named: "sky")!)
        newView.center = animationView.center
          self.animationView.addSubview(newView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      //create new view
    
      //add the new view via transition
      UIView.transition(with: animationView,
        duration: 5,
        options: [.curveEaseOut, .transitionFlipFromRight],
        animations: {
          self.newView.removeFromSuperview()
        },
        completion: nil
      )
    }


}

