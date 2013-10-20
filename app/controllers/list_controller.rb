class ListController < UIViewController
  stylesheet :list

  def viewDidLoad
    layout(self.view, :root) do
      subview(UILabel, :label)
      subview(UITableView, :table, dataSource: self)
    end
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @cell_identifier ||= "LC"

    cell = tableView.dequeueReusableCellWithIdentifier(@cell_identifier) || begin
        UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, 
                                            reuseIdentifier: @cell_identifier)
    end

    location = Location.locations { |ls| ls[indexPath.row] }
    cell.textLabel.text = location.name
    cell.detailTextLabel.text = location.address
    return cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    Location.locations do |locations|
      locations.size
    end
  end

end
