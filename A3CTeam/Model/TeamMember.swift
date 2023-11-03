//
//  TeamMember.swift
//  A3CTeam
//
//  Created by Nikolai Grachev on 02.11.2023.
//

import Foundation

struct TeamMember {
    var name: String
    var surname: String
    var portrait: String
    
    static func getTeamMember() -> [TeamMember] {
        let personData = PersonData()
        var array: [TeamMember] = []
        for i in 0..<personData.names.count {
            array.append(TeamMember(name: personData.names[i],
                                    surname: personData.surnames[i],
                                    portrait: personData.portraits[i]))
        }
        return array
    }
}

struct Achivement {
    var title: String
    var subtitle: String
    var icon: String
    
    static func getAchivement() -> [Achivement] {
        let achivementData = AchivementsData()
        var array: [Achivement] = []
        for i in 0..<achivementData.titles.count {
            array.append(Achivement(title: achivementData.titles[i],
                                    subtitle: achivementData.subtitles[i],
                                    icon: achivementData.subtitles[i]))
        }
        return array
    }
    
}
