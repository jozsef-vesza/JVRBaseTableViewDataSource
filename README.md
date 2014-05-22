JVRBaseTableViewDataSource
==========================

A basic, reusable and expandable `UITableViewDataSource` class, to take the clutter out of your `UITableView` classes. To use it, you will also need a class that conforms to the `JVRCellConfiguratorDelegate`, which will setup the individual cells, for the table view. For details about the usage, see the simple examples below, or refer to the example project.

### Configuring Table View Cells
Cell configurator classes aim to encapsulate the logic that previously belonged in the `tableView:cellForRowAtIndexPath:` method found in the `UITableViewDataSource` protocol. They can be used to return the reuse identifier for a cell according to the object it is supposed to show, and to customize its appearance or behavior.

```objc
#import "JVRBaseTableViewDataSource.h"

// MyCellConfigurator.h

@interface MyCellConfigurator : NSObject<JVRCellConfiguratorDelegate>
@end

// MyCellConfigurator.m
@implementation MyCellConfigurator

- (NSString *)fetchCellIdentifierForObject:(id)anObject
{
    if ([anObject isKindOfClass:[MyClass class]])
    {
        return @"myCell";
    }

    return @"regularCell";
}

- (UITableViewCell *)configureCell:(MyCell *)cell usingObject:(MyClass *)object
{
    cell.titleLabel.text = object.stringProperty;
    return cell;
}

@end

```

### Example usage in a Table View Controller:
By using `JVRBaseTableViewDataSource`, many lines of boilerplate code can be omitted from `UITableViewController` classes. Support for table view sections can be achieved by sublassing this class, and implementing the `numberOfSectionsInTableView:` method. 

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
