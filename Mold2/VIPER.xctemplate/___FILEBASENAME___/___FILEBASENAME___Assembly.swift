//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import Swinject
import SwinjectStoryboard

class ___FILEBASENAMEASIDENTIFIER___: Assembly {
    
    func assemble(container: Container) {
        
        container.register(___VARIABLE_viperModuleName___Interactor.self) { (r, presenter: ___VARIABLE_viperModuleName___Presenter) in
            let interactor = ___VARIABLE_viperModuleName___Interactor()
            interactor.presenter = presenter
            return interactor
        }
        
        container.register(___VARIABLE_viperModuleName___Router.self) { (r, viewController: ___VARIABLE_viperModuleName___ViewController) in
            let router = ___VARIABLE_viperModuleName___Router()
            router.view = viewController
            return router
        }
        
        container.register(___VARIABLE_viperModuleName___Presenter.self) { (r, viewController: ___VARIABLE_viperModuleName___ViewController) in
            let presenter = ___VARIABLE_viperModuleName___Presenter()
            presenter.view = viewController
            presenter.interactor = r.resolve(___VARIABLE_viperModuleName___Interactor.self, argument: presenter)
            presenter.router = r.resolve(___VARIABLE_viperModuleName___Router.self, argument: viewController)
            
            return presenter
        }
        
        container.storyboardInitCompleted(___VARIABLE_viperModuleName___ViewController.self) { r, c in
            c.presenter = r.resolve(___VARIABLE_viperModuleName___Presenter.self, argument: c)
        }
    }
}
