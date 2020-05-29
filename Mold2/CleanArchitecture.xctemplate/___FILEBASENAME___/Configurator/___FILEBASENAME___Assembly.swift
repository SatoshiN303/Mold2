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
        container.register(___VARIABLE_cleanArchitectureModuleName___UseCase.self) { (r, presenter: ___VARIABLE_cleanArchitectureModuleName___Presenter) -> ___VARIABLE_cleanArchitectureModuleName___UseCase in
            let usecase = ___VARIABLE_cleanArchitectureModuleName___UseCase()
            usecase.gateway = r.resolve(___VARIABLE_cleanArchitectureModuleName___Gateway.self, argument: usecase)
            usecase.presenter = presenter
            return usecase
        }
        
        container.register(___VARIABLE_cleanArchitectureModuleName___Gateway.self) { (_, _: ___VARIABLE_cleanArchitectureModuleName___UseCase) -> ___VARIABLE_cleanArchitectureModuleName___Gateway in
            let gateway = ___VARIABLE_cleanArchitectureModuleName___Gateway()
            return gateway
        }
        
        container.register(___VARIABLE_cleanArchitectureModuleName___Presenter.self) { (r, vc: ___VARIABLE_cleanArchitectureModuleName___ViewController) -> ___VARIABLE_cleanArchitectureModuleName___Presenter in
            let presenter = ___VARIABLE_cleanArchitectureModuleName___Presenter()
            presenter.view = vc
            presenter.useCase = r.resolve(___VARIABLE_cleanArchitectureModuleName___UseCase.self, argument: presenter)
            
            return presenter
        }
        
        container.storyboardInitCompleted(___VARIABLE_cleanArchitectureModuleName___ViewController.self) { r, vc in
            vc.presenter = r.resolve(___VARIABLE_cleanArchitectureModuleName___Presenter.self, argument: vc)
        }
    }
}
