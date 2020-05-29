//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    fileprivate let presenter: ___VARIABLE_mvpModuleName___Presenter
    
    init(presenter: ___VARIABLE_mvpModuleName___Presenter) {
        self.presenter = presenter
    }
    
    /*
      It is assumed to describe a process that uses data sources acquired via presenter, such as UITableView and UICollectionView.
     
    func configure(with tableView: UITableView) {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(RepositoryViewCell.self)
    }
     */
}
