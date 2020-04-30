//
//  HomeViewController.swift
//  Category-to-Swift
//
//  Created by Cong Le on 4/29/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let helloFromSwift = UILabel()
    let helloFromCategory = UILabel()
    let person = PersonFromObjC()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Swift home town
        view.addSubview(helloFromSwift)
        setupSwiftLabel()
        setupConstraintsForSwiftLabel()
        // invasion from the deep world
        helloFromDeepWorld() 
        
    }
    func setupSwiftLabel() {
        helloFromSwift.text = "Hello from Swift Home Screen!"
    }
    func setupConstraintsForSwiftLabel() {
        helloFromSwift.translatesAutoresizingMaskIntoConstraints = false
        helloFromSwift.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        helloFromSwift.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        helloFromSwift.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        helloFromSwift.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    func helloFromDeepWorld() {
        person.personFromObjCSayHola()
        person.sayHelloFromCategory()
    }
    
    func setupObjCLabel() {
        print(person.firstName ?? "No first name")
    }
    func setupConstraintForObjCLabel() {
        helloFromCategory.translatesAutoresizingMaskIntoConstraints = false
        helloFromCategory.topAnchor.constraint(equalTo: helloFromSwift.topAnchor, constant: 20).isActive = true
        helloFromCategory.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        helloFromCategory.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        helloFromCategory.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    
}

