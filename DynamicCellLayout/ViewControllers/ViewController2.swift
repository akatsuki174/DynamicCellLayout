import UIKit

final class ViewController2: UITableViewController {

    private var items: [ItemViewModel.Item] = []
    private var viewModel: ItemViewModel = ItemViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DynamicCell2.nib(), forCellReuseIdentifier: DynamicCell2.identifier)
        items = viewModel.getTenItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: UITableViewDelegate, UITableViewDataSource

extension ViewController2 {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DynamicCell2.identifier, for: indexPath) as? DynamicCell2 else {
            fatalError("Could not find proper cell")
        }
        cell.update(item: items[indexPath.row])
        return cell
    }

}

