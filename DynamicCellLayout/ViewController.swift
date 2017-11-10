import UIKit

final class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DynamicCell.nib(), forCellReuseIdentifier: DynamicCell.identifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: UITableViewDelegate, UITableViewDataSource

extension ViewController {
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DynamicCell.identifier) as? DynamicCell else {
            fatalError("Could not find proper cell")
        }
        return cell
    }
}
