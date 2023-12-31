//
//  WelcomeViewController.swift
//  A3CTeam
//
//  Created by Chorrs on 4.11.23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var katyaImage: UIImageView! {
        didSet {
            katyaImage.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var leshaImage: UIImageView! {
        didSet {
            leshaImage.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var kolyaImage: UIImageView! {
        didSet {
            kolyaImage.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var teamImage: UIImageView! {
        didSet {
            teamImage.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var findOutMoreButton: UIButton! {
        didSet {
            findOutMoreButton.layer.cornerRadius = 16
            findOutMoreButton.layer.borderWidth = 1
            findOutMoreButton.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    @IBOutlet weak var katyaLabel: UILabel!
    @IBOutlet weak var leshaLabel: UILabel!
    @IBOutlet weak var kolyaLabel: UILabel!
    
    private let member = TeamMember.getTeamMember()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPersonsPictures()
        setPersonsNames()
    }
}

extension WelcomeViewController {
    
    private func setPersonsPictures() {
        katyaImage.image = UIImage(named: member[0].name)
        leshaImage.image = UIImage(named: member[2].name)
        kolyaImage.image = UIImage(named: member[1].name)
    }
    private func setPersonsNames() {
        katyaLabel.text = member[0].name
        leshaLabel.text = member[2].name
        kolyaLabel.text = member[1].name
    }
}
