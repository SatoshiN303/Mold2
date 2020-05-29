//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import SwinjectStoryboard
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
    var presenter: ___VARIABLE_cleanArchitectureModuleName___PresenterInputProtocol!

    static func makeInstance() -> ___FILEBASENAMEASIDENTIFIER___ {
        guard let vc = SwinjectStoryboard.create(name: "___VARIABLE_cleanArchitectureModuleName___", bundle: nil).instantiateViewController(withIdentifier: "___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ else {
            fatalError()
        }
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cleanArchitectureModuleName___PresenterOutputProtocol {
}


