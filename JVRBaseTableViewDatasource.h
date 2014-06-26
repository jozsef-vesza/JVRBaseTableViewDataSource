//
//  JVRBaseTableViewDataSource.h
//  Lighter TVC Regular
//
//  Created by Jozsef Vesza on 19/05/14.
//
//

#import <Foundation/Foundation.h>

/**
 *  Cell configurator delegate protocol that must be implemented by the class responsible for table view cell customizations
 */
@protocol JVRCellConfiguratorDelegate <NSObject>

/**
 *  Fetch the reuse identifier for a table view cell with regards to the object it shows
 *
 *  @param object The object, which is shown in the cell
 *
 *  @return An NSString instance containing the identifier
 */
- (NSString *)fetchReuseIdentifierForObject:(id)object;

/**
 *  Customize a given table view cell with the properties of an object
 *
 *  @param cell   The cell to be configured
 *  @param object The object shown in the cell
 *
 *  @return The configured UITableViewCell instance
 */
- (UITableViewCell *)configureCell:(UITableViewCell *)cell usingObject:(id)object;

@end

/**
 *  JVRBaseTableViewDataSource is meant to be used by UITableViewController classes as data source
 */
@interface JVRBaseTableViewDataSource : NSObject<UITableViewDataSource>

/**
 *  Convenience initializer method
 *
 *  @param tableView        The table view, which will use this instance as data source
 *  @param items            The items to show in the table view
 *  @param cellConfigurator The cell configurator instance to use for customizing table view cells
 *
 *  @return An initialized instance of JVRBaseTableViewDataSource
 */
+ (instancetype)datasourceForTableView:(UITableView *)tableView withItems:(NSArray *)items usingCellConfigurator:(id<JVRCellConfiguratorDelegate>)cellConfigurator;

/**
 *  Property to query items
 */
@property (nonatomic, copy, readonly) NSArray *items;

/**
 *  Property to query table view
 */
@property (nonatomic, weak) UITableView *tableView;

/**
 *  Property to query configurator
 */
@property (nonatomic, strong) id<JVRCellConfiguratorDelegate> cellConfigurator;

@end
