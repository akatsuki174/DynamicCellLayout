import UIKit

final class ViewController: UITableViewController {
    
    private var items: [Item] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DynamicCell.nib(), forCellReuseIdentifier: DynamicCell.identifier)
        
        items.append(Item())
        items.append(Item(dynamicLabelText: ""))
        items.append(Item(imageName: ""))
        items.append(Item(imageName: ""))
        items.append(Item(dynamicLabelText: "", imageName: ""))
        items.append(Item())
        items.append(Item(imageName: ""))
        items.append(Item(dynamicLabelText: "", imageName: ""))
        items.append(Item())
        items.append(Item(dynamicLabelText: ""))
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DynamicCell.identifier) as? DynamicCell else {
            fatalError("Could not find proper cell")
        }
        cell.update(item: items[indexPath.row])
        return cell
    }
}
