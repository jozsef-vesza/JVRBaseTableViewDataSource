//
//  JVRBaseTableViewDataSource.h
//  Lighter TVC Regular
//
//  Created by Jozsef Vesza on 19/05/14.
//
//

#import <Foundation/Foundation.h>

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

@interface JVRBaseTableViewDataSource : NSObject<UITableViewDataSource>

/**
 *  Convenience initializer method
 *
 *  @param tableView        The table view, which will use this instance as dataSource
 *  @param items            The items to show in the table view
 *  @param cellConfigurator The cell configurator instance to use for customizing table view cells
 *
 *  @return An initialized instance of JVRBaseTableViewDataSource
 */
+ (instancetype)datasourceForTableView:(UITableView *)tableView withItems:(NSArray *)items usingCellConfigurator:(id<JVRCellConfiguratorDelegate>)cellConfigurator;

@end
