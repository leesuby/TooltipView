//
//  ViewController.swift
//  TooltipView
//
//  Created by Longnct on 20/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        return button
    }()
    
    private var toolTip: PopTip = {
        let toolTip = PopTip()
        toolTip.font = UIFont(name: "Avenir-Medium", size: 12)!
        toolTip.shouldDismissOnTap = true
        toolTip.shouldDismissOnTapOutside = true
        toolTip.shouldDismissOnSwipeOutside = true
        toolTip.shouldConsiderCutoutTapSeparately = true
        toolTip.edgeMargin = 5
        toolTip.offset = 2
        toolTip.bubbleOffset = 0
        toolTip.edgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        return toolTip
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initView()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc func didTapButton(){
        toolTip.show(text: "muahahahahahaha", direction: .auto, maxWidth: 100, in: view, from: button.frame)
    }

    func initView(){
        view.backgroundColor = .white
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }


}

