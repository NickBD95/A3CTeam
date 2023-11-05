//
//  TeamInfoViewController.swift
//  A3CTeam
//
//  Created by deshollow on 04.11.2023.
//

import UIKit

final class TeamInfoViewController: UIViewController {
    
    @IBOutlet weak var achivementTableView: UITableView!
    
    private let achivements = Achivement.getAchivement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        achivementTableView.delegate = self
        achivementTableView.dataSource = self
    }
}

extension TeamInfoViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        achivements.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        achivements[section].title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let achivement = achivements[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = achivement.subtitle
            cell.selectionStyle = .none
            cell.contentConfiguration = content
            
        } else if indexPath.row == 1 {
            content.text = achivement.rating
            cell.selectionStyle = .none
            cell.contentConfiguration = content
            
        }
        
        return cell
    }
}
