//
//  HomeViewController.swift
//  SiriIntents
//
//  Created by Anil Kothari on 04/03/23.
//

import UIKit

final class HomeViewController: UIViewController, Identifiable {
    private let viewModel: HomeViewModel
    @IBOutlet private weak var tableView: UITableView!
    let dataSource = ["First", "Second"]
    
    init?(viewModel: HomeViewModel, coder: NSCoder) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.dispatch(event: .screenAppear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = dataSource[indexPath.row]
        return cell ?? UITableViewCell()
    }
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row \(indexPath.row)")
    }
}
