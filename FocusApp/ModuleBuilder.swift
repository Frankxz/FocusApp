//
//  ModuleBuilder.swift
//  FocusApp
//
//  Created by Robert Miller on 09.03.2022.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class MainModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(name: "Robert", surname: "Miller")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
}
