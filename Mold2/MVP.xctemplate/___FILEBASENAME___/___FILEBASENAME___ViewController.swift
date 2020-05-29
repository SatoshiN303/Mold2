//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_mvpModuleName___ViewProtocol: class {
}

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ___VARIABLE_mvpModuleName___ViewProtocol {
    
    let presenter: ___VARIABLE_mvpModuleName___Presenter
    let dataSource: ___VARIABLE_mvpModuleName___ViewDataSource

    init(presenter: ___VARIABLE_mvpModuleName___Presenter) {
        self.presenter = presenter
        self.dataSource = ___VARIABLE_mvpModuleName___ViewDataSource(presenter: presenter)
        super.init(nibName:  ___FILEBASENAMEASIDENTIFIER___.className, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.view = self
    }
}
