//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewProtocol: class {
}

final class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController, ___FILEBASENAMEASIDENTIFIER___ViewProtocol {
    
    let presenter: ___FILEBASENAMEASIDENTIFIER___Presenter
    let dataSource: ___FILEBASENAMEASIDENTIFIER___ViewDataSource

    init(presenter: ___FILEBASENAMEASIDENTIFIER___Presenter) {
        self.presenter = presenter
        self.dataSource = ___FILEBASENAMEASIDENTIFIER___ViewDataSource(presenter: presenter)
        super.init(nibName: ___FILEBASENAMEASIDENTIFIER___ViewController.className, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.view = self
    }
}
