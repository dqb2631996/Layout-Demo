//
//  ViewController.swift
//  Demo
//
//  Created by Bao on 15/04/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var blueView: UIView!
    @IBOutlet private weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addShadow()
    }
    
    private func addShadow() {
        addShadowBlueView()
        addShadowRedView()
    }
    
    private func addShadowRedView() {
        let maskLayer = CAGradientLayer()
        maskLayer.frame = redView.bounds
        maskLayer.colors = [UIColor.red.withAlphaComponent(0.3).cgColor, UIColor.red.withAlphaComponent(0.01).cgColor]
        maskLayer.type = .radial
        maskLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        maskLayer.endPoint = CGPoint(x: 1, y: 1)
        redView.layer.cornerRadius = redView.bounds.height / 2
        redView.clipsToBounds = true
        redView.layer.addSublayer(maskLayer)
    }
    
    private func addShadowBlueView() {
        let maskLayer = CAGradientLayer()
        maskLayer.frame = blueView.bounds
        maskLayer.colors = [UIColor.blue.withAlphaComponent(0.15).cgColor, UIColor.clear]
        maskLayer.type = .radial
        maskLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        maskLayer.endPoint = CGPoint(x: 1, y: 1)
        blueView.layer.cornerRadius = blueView.bounds.height / 2
        blueView.clipsToBounds = true
        blueView.layer.addSublayer(maskLayer)
    }
}


