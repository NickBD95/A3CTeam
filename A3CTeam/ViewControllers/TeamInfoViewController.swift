//
//  TeamInfoViewController.swift
//  A3CTeam
//
//  Created by deshollow on 04.11.2023.
//

import UIKit

class TeamInfoViewController: UIViewController {
    
    @IBOutlet weak var achivementTableView: UITableView!
    
    private let achivements = Achivement.getAchivement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        achivementTableView.delegate = self
        achivementTableView.dataSource = self
    }
}

extension TeamInfoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("you tapped me!")
    }
}

extension TeamInfoViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
}

    
