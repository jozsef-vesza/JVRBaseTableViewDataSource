//
//  JVEPeopleView.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 20/05/14.
//
//

#import "JVEPeopleView.h"
#import "JVRBaseTableViewDataSource.h"
#import "JVEPersonCellConfigurator.h"
#import "JVEPerson.h"

@interface JVEPeopleView ()

@property (nonatomic, strong) JVRBaseTableViewDataSource *dataSource;

@end

@implementation JVEPeopleView

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupDataSource];
}

- (void)setupDataSource
{
    self.dataSource = [JVRBaseTableViewDataSource
                       datasourceForTableView:self.tableView
                       withItems:[self generatePeople]
                       usingCellConfigurator:[[JVEPersonCellConfigurator alloc] init]];
}

- (NSArray *)generatePeople
{
    NSMutableArray *people = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++)
    {
        JVEPerson *person = [JVEPerson personCalled:[NSString stringWithFormat:@"Person%d", i]];
        [people addObject:person];
    }
    
    return people;
}

@end
