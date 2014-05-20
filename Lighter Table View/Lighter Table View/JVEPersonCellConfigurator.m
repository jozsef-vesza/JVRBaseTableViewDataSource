//
//  JVEPersonCellConfigurator.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 20/05/14.
//
//

#import "JVEPersonCellConfigurator.h"
#import "JVEPerson.h"

@implementation JVEPersonCellConfigurator

- (NSString *)fetchReuseIdentifierForObject:(id)object
{
    return @"personCell";
}

- (UITableViewCell *)configureCell:(UITableViewCell *)cell usingObject:(JVEPerson *)object
{
    cell.textLabel.text = object.name;
    return cell;
}

@end
