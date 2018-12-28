//
//  GreetingPresenter.swift
//  MVPDesignPattern
//
//  Created by Adarsha Upadhya on 28/12/18.
//  Copyright © 2018 Adarsha Upadhya. All rights reserved.
//

import Foundation


class GreetingPresenter : GreetingViewPresenter {
    unowned let view: GreetingView
    let person: Person
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    func showGreeting() {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
