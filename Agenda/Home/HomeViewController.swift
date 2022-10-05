//
//  ViewController.swift
//  Agenda
//
//  Created by user on 03/10/22.
//

import UIKit

class HomeViewController: UITableViewController {
<<<<<<< HEAD
    private var contacts: [Contact] = [
        .init(name: "A", number: "0"),
        .init(name: "B", number: "1")
    ]
=======
    private var contacts: [Contact] = []
>>>>>>> c4fc772 (second commit)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRightBarButtonItem()
        title = "Agenda"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HomeTableViewCell()
        let contact = contacts[indexPath.row]
        cell.setup(name: contact.name, number: contact.number)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
<<<<<<< HEAD
=======
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
>>>>>>> c4fc772 (second commit)
    private func setupRightBarButtonItem() {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapRightButton))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    @objc
    private func didTapRightButton() {
<<<<<<< HEAD
=======
        let addViewController = AddViewController()
        addViewController.delegate = self
        navigationController?.pushViewController(addViewController, animated: true)
>>>>>>> c4fc772 (second commit)
        print(" >>> Add contact button touched")
    }
}

<<<<<<< HEAD
=======
extension HomeViewController: AddViewControllerDelegate {
    func addButtonTapped(name: String, number: String) {
        let contact = Contact(name: name, number: number)
        contacts.append(contact)
        tableView.reloadData()
        print(" >>> Add Button Tapped!!!")
    }
}
>>>>>>> c4fc772 (second commit)
