//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

final class ___FILEBASENAMEASIDENTIFIER___ViewDataSource: NSObject {
    fileprivate let presenter: ___FILEBASENAMEASIDENTIFIER___Presenter
    
    init(presenter: ___FILEBASENAMEASIDENTIFIER___Presenter) {
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
