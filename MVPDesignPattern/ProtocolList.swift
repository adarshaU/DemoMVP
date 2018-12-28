//
//  ProtocolList.swift
//  MVPDesignPattern
//
//  Created by Adarsha Upadhya on 28/12/18.
//  Copyright © 2018 Adarsha Upadhya. All rights reserved.
//

import Foundation


protocol GreetingView: class {
    func setGreeting(greeting: String)
}

protocol GreetingViewPresenter {
    init(view: GreetingView, person: Person)
    func showGreeting()
}
