
class DataSource: NSObject, UITableViewDataSource{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 7;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let row = indexPath.row
        
        let style = UITableViewCellStyle.fromRaw(row)
        
        //        let cell = UITableViewCell(style: style!, reuseIdentifier: nil)
        let cell = UITableViewCell(style: style ?? .Default, reuseIdentifier: nil)
        
        cell.textLabel!.text = "text"
        
        if let detailtTextLabel = cell.detailTextLabel
        {
            detailtTextLabel.text = "Detail text"
        }
        
        return cell
    }
}

let ds = DataSource()
let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 240), style: .Plain)

tableView.dataSource = ds
tableView.reloadData()