JVRBaseTableViewDataSource
==========================

A basic, reusable and expandable `UITableViewDataSource` class, to take the clutter out of your `UITableView` classes. To use it, you will also need a class that conforms to the `JVRCellConfiguratorDelegate`, which will setup the individual cells, for the table view. For details about the usage, see the simple examples below, or refer to the example project.

### Example for a cell configurator

```objc
- (NSString *)fetchCellIdentifierForObject:(id)anObject
{
    if ([anObject isKindOfClass:[MyClass class]])
    {
        return @"myCell";
    }
    else
    {
        return @"regularCell";
    }
}

- (UITableViewCell *)configureCell:(MyCell *)cell usingObject:(MyClass *)object
{
    cell.titleLabel.text = object.stringProperty;
    return cell;
}
```

### Example usage in a Table view class:

```objc
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupDataSource];
}

- (void)setupDataSource
{
    self.dataSource = [JVRBaseTableViewDatasource datasourceForTableView:self.tableView
                                                               withItems:@[@"test", @"item"]
                                                   usingCellConfigurator:[[MyCellConfigurator alloc] init]];
}
```
