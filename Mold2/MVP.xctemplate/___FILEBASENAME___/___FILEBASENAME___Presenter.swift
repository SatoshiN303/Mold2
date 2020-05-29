//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_mvpModuleName___Protocol: class {
    var view: ___VARIABLE_mvpModuleName___ViewProtocol? { get set }
}

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_mvpModuleName___Protocol {

    weak var view: ___VARIABLE_mvpModuleName___ViewProtocol?

    private let model = ___VARIABLE_mvpModuleName___Model()

    init() {
        self.model.delegate = self
    }
}

extension ___VARIABLE_mvpModuleName___Presenter: ___VARIABLE_mvpModuleName___ModelDelegate {
    func ___VARIABLE_mvpModuleName___DidChange() {
    }
}
