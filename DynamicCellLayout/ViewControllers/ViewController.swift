import UIKit

final class ViewController: UITableViewController {
    
    private var items: [ItemViewModel.Item] = []
    private var viewModel: ItemViewModel = ItemViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DynamicCell.nib(), forCellReuseIdentifier: DynamicCell.identifier)
        
        items = viewModel.getTenItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: UITableViewDelegate, UITableViewDataSource

extension ViewController {
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DynamicCell.identifier, for: indexPath) as? DynamicCell else {
            fatalError("Could not find proper cell")
        }
        cell.update(item: items[indexPath.row])
        return cell
    }

}
