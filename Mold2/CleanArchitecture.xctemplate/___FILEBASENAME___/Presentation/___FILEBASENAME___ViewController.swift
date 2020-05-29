//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import SwinjectStoryboard
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {
    
    var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInputProtocol!

    static func makeInstance() -> ___FILEBASENAMEASIDENTIFIER___ViewController {
        guard let vc = SwinjectStoryboard.create(name: "{-- Insert Storybord Name --}", bundle: nil).instantiateViewController(withIdentifier: "___FILEBASENAMEASIDENTIFIER___ViewController") as? ___FILEBASENAMEASIDENTIFIER___ViewController else {
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

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterOutputProtocol {
}


