//
//  JVRBaseTableViewDataSource.h
//  Lighter TVC Regular
//
//  Created by Jozsef Vesza on 19/05/14.
//
//

#import <Foundation/Foundation.h>

@protocol JVRCellConfiguratorDelegate <NSObject>

- (NSString *)fetchReuseIdentifierForObject:(id)object;
- (UITableViewCell *)configureCell:(UITableViewCell *)cell usingObject:(id)object;

@end

@interface JVRBaseTableViewDataSource : NSObject<UITableViewDataSource>

+ (instancetype)datasourceForTableView:(UITableView *)tableView withItems:(NSArray *)items usingCellConfigurator:(id<JVRCellConfiguratorDelegate>)cellConfigurator;

@end
