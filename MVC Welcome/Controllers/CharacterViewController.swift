//
//  CharacterViewController.swift
//  MVC Welcome
//
//  Created by Николай Никитин on 25.10.2021.
//

import UIKit

class CharacterViewController: UIViewController {

  // MARK: - Outlets
  @IBOutlet var characterName: UILabel!
  @IBOutlet var characterPhoto: UIImageView!
  @IBOutlet var characterNotes: UITextView!
  @IBOutlet var characterRating: UILabel!
  @IBOutlet var characterTimeStamp: UILabel!
  @IBOutlet var forceLabel: UILabel!
  @IBOutlet var dexterityLabel: UILabel!
  @IBOutlet var mindLabel: UILabel!
  @IBOutlet var damageLabel: UILabel!
  @IBOutlet var defenseLabel: UILabel!
  @IBOutlet var speedLabel: UILabel!

  // MARK: - Properties
  var characters: Characters!

  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()

  }
// MARK: - Methods
  func updateUI(){
    characterName.text = characters.name
    characterPhoto.image = characters.photo
    characterRating.text = characters.stars
    characterNotes.text = characters.notes
    characterTimeStamp.text = characters.formattedTimeStamp
    forceLabel.text = characters.force
    dexterityLabel.text = characters.dexterity
    mindLabel.text = characters.mind
    damageLabel.text = characters.damage
    defenseLabel.text = characters.defense
    speedLabel.text = characters.speed
  }


}
