//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Presenter: class {
    var view: ___FILEBASENAMEASIDENTIFIER___ViewProtocol? { get set }
}

final class ___FILEBASENAMEASIDENTIFIER___ViewPresenter: ___FILEBASENAMEASIDENTIFIER___Presenter {

    weak var view: ___FILEBASENAMEASIDENTIFIER___ViewProtocol?

    private let model = ___FILEBASENAMEASIDENTIFIER___Model()

    init() {
        self.model.delegate = self
    }
}

extension ___FILEBASENAMEASIDENTIFIER___ViewPresenter: ___FILEBASENAMEASIDENTIFIER___ModelDelegate {
    func ___FILEBASENAMEASIDENTIFIER___DidChange() {
    }
}
