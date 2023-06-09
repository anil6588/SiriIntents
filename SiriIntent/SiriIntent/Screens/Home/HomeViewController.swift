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
    private var list = [ItemStack]()
    
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
        list = viewModel.fetchData().itemStacks ?? []
        self.title = "Product"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeTableViewCell
        let item = list[indexPath.row]
        cell?.set(name: item.name, urlString: item.imageInfo?.thumbnailUrl, price: item.priceInfo)
        return cell ?? UITableViewCell()
    }
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row \(indexPath.row)")
    }
}
