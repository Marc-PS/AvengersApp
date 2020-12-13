//
//  ViewController.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 10/12/20.
//

import UIKit

class SplashViewController: UIViewController {
    
    var counter = 0.0
    
    @IBOutlet var progressView: UIProgressView?

    override func viewDidLoad() {
        super.viewDidLoad()
       
        progressView?.progressViewStyle = .default
        progressView?.setProgress(0.0, animated: true)
        
        
        for _ in 0...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in
                self?.counter += 0.1
                self?.progressView?.setProgress(Float(self!.counter), animated: true)
            }
        }
        
        navigateNext()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
    
    private func navigateNext() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            
            let storyboardMain = UIStoryboard(name: "Main",
                                              bundle: nil)
            if let destination = storyboardMain.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination],
                                                               animated: true)
            }
        }
    
    
    }


}

