//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Swinject
import SwinjectStoryboard

class ___FILEBASENAMEASIDENTIFIER___Assembly: Assembly {
    func assemble(container: Container) {
        container.register(___FILEBASENAMEASIDENTIFIER__UseCase.self) { (r, presenter: ___FILEBASENAMEASIDENTIFIER__Presenter) -> ___FILEBASENAMEASIDENTIFIER__UseCase in
            let usecase = ___FILEBASENAMEASIDENTIFIER__UseCase()
            usecase.gateway = r.resolve(___FILEBASENAMEASIDENTIFIER__Gateway.self, argument: usecase)
            usecase.presenter = presenter
            return usecase
        }
        
        container.register(___FILEBASENAMEASIDENTIFIER__Gateway.self) { (_, _: ___FILEBASENAMEASIDENTIFIER__UseCase) -> ___FILEBASENAMEASIDENTIFIER__Gateway in
            let gateway = ___FILEBASENAMEASIDENTIFIER__Gateway()
            return gateway
        }
        
        container.register(___FILEBASENAMEASIDENTIFIER__Presenter.self) { (r, vc: ___FILEBASENAMEASIDENTIFIER__ViewController) -> ___FILEBASENAMEASIDENTIFIER__Presenter in
            let presenter = ___FILEBASENAMEASIDENTIFIER__Presenter()
            presenter.view = vc
            presenter.useCase = r.resolve(___FILEBASENAMEASIDENTIFIER__UseCase.self, argument: presenter)
            
            return presenter
        }
        
        container.storyboardInitCompleted(___FILEBASENAMEASIDENTIFIER__ViewController.self) { r, vc in
            vc.presenter = r.resolve(___FILEBASENAMEASIDENTIFIER__Presenter.self, argument: vc)
        }
    }
}
