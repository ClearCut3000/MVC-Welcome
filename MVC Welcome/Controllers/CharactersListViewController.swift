//
//  CharactersListViewController.swift
//  MVC Welcome
//
//  Created by Николай Никитин on 24.10.2021.
//

import UIKit

class CharactersListViewController: UIViewController, UISearchBarDelegate, UISearchResultsUpdating {

  // MARK: - Properties
  private let searchController = UISearchController()

  // Connect model with controller
  private var characters = Characters.all
  var filteredCharacters = [Characters]()

  // MARK: - Outlets
  // Connect view with model
  @IBOutlet var tableView: UITableView!

  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    initSearchController()
  }

  // MARK: - Methods
  private func initSearchController(){
    searchController.loadViewIfNeeded()
    searchController.searchResultsUpdater = self
    searchController.obscuresBackgroundDuringPresentation = false
    searchController.searchBar.enablesReturnKeyAutomatically = false
    searchController.searchBar.returnKeyType = UIReturnKeyType.done
    definesPresentationContext = true
    navigationItem.searchController = searchController
    navigationItem.hidesSearchBarWhenScrolling = false
    searchController.searchBar.scopeButtonTitles = ["All", "Strength", "Agility", "Intelligence"]
    searchController.searchBar.delegate = self
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard segue.identifier == "CharacterSegue" else { return }
    guard let selectedPath = tableView.indexPathForSelectedRow else { return }
    let destination = segue.destination as! CharacterViewController
    if (searchController.isActive) {
      destination.characters = filteredCharacters[selectedPath.row]
    } else {
      destination.characters = characters[selectedPath.row]
    }
  }
}
// MARK: - Table View Data Sourse
extension CharactersListViewController: UITableViewDataSource{
  // Get rows in single section
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if(searchController.isActive){
      return filteredCharacters.count
    }
    return characters.count
  }
  // Get cell format accordint to characters structure and search options.
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell")!
    let character: Characters
    if(searchController.isActive){
      character = filteredCharacters[indexPath.row]
    } else {
      character = characters[indexPath.row]
    }
    cell.detailTextLabel?.text = character.stars
    cell.imageView?.image = character.photo
    cell.textLabel?.text = character.name
    return cell
  }
  
// Updates search results
  func updateSearchResults(for searchController: UISearchController) {
    let searchBar = searchController.searchBar
    let scopeButton = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
    let searchText = searchBar.text!
    filterForSearchTextAndScopeButton(searchText: searchText, scopeButton: scopeButton)
  }

  // Filters characters by their types and/or by searching literals ahd updates tableView
  func filterForSearchTextAndScopeButton(searchText: String, scopeButton: String = "All")
  {
    filteredCharacters = characters.filter
    {
      character in
      let scopeMatch = (scopeButton == "All" || character.type.lowercased().contains(scopeButton.lowercased()))
      if (searchController.searchBar.text != "")
      {
        let searchTextMatch = character.name.lowercased().contains(searchText.lowercased())
        return scopeMatch && searchTextMatch
      } else { return scopeMatch }
    }
    tableView.reloadData()
  }

}


