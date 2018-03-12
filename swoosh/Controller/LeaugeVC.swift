//
//  LeaugeVC.swift
//  swoosh
//
//  Created by Fernando Romany on 3/11/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

class LeaugeVC: UIViewController {

    var player : Player!
    
    @IBOutlet weak var nextButton: buttonBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func leagueNextPressed(_ sender: Any) {
        performSegue(withIdentifier: "leaugeSegueToSkill", sender: self)
    }
    
    @IBAction func menPressed(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    
    @IBAction func womanPressed(_ sender: Any) {
        selectLeague(leagueType: "woman")
    }
    
    @IBAction func coedPressed(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType : String) {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
