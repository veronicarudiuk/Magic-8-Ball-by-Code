//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let ballArray = [UIImage(named: "ball1"), UIImage(named: "ball2"), UIImage(named: "ball3"), UIImage(named: "ball4"), UIImage(named: "ball5")]
    
    let mainLabel = UILabel(frame: CGRect(x: 50, y: 150, width: 350, height: 50))
    let mainImage = UIImageView(image: UIImage(named: "ball1"))
    let buttonAsk = UIButton(frame: CGRect(x: 100, y: 700, width: 200, height: 70))
    
    
    override func viewDidLoad() {
        view.backgroundColor = .darkGray
        mainLabel.text = "Ask Me Anything"
        mainLabel.textColor = .white
        mainLabel.font = UIFont(name: "HelveticaNeue", size: 40)
        mainImage.frame = CGRect(x: 40, y: 300, width: 340, height: 300)
        buttonAsk.setTitle("Ask Me", for: .normal)
        buttonAsk.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 30)
        buttonAsk.backgroundColor = .black
        buttonAsk.layer.cornerRadius = 30
        buttonAsk.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        
        view.addSubview(mainLabel)
        view.addSubview(mainImage)
        view.addSubview(buttonAsk)
    }
    
    @objc func onClick() {
        mainImage.image = ballArray[Int.random(in: 0...4)]
    }
}


 
struct SwiftUIController: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    
    func makeUIViewController(context: Context) -> UIViewControllerType {
        let viewController = UIViewControllerType()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

struct SwiftUIController_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIController().edgesIgnoringSafeArea(.all)
    }
}
