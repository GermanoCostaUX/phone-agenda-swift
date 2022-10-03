//
//  ViewController.swift
//  Agenda
//
//  Created by user on 03/10/22.
//

import UIKit

class HomeViewController: UITableViewController {
    private var contacts: [Contact] = [
        .init(name: "A", number: "0"),
        .init(name: "B", number: "1")
    ]
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
    private func setupRightBarButtonItem() {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapRightButton))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    @objc
    private func didTapRightButton() {
        print(" >>> Add contact button touched")
    }
}

