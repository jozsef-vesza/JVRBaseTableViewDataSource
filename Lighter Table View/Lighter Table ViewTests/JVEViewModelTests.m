//
//  JVEViewModelTests.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 20/05/14.
//
//

#import <XCTest/XCTest.h>
#import "JVEPerson.h"
#import "JVRBaseTableViewDataSource.h"
#import "JVEPersonCellConfigurator.h"

@interface JVEViewModelTests : XCTestCase

@property (nonatomic, strong) NSMutableArray *persons;

@end

@implementation JVEViewModelTests

- (void)setUp
{
    [super setUp];
    self.persons = [NSMutableArray array];
    for (int i = 0; i < 10; i++)
    {
        JVEPerson *person = [JVEPerson personCalled:[NSString stringWithFormat:@"Person%d", i]];
        [self.persons addObject:person];
    }
}

- (void)testDataSourceSetup
{
    XCTAssertNotNil(self.persons, @"Persons don't exist");
    for (JVEPerson *person in self.persons)
    {
        NSLog(@"%@", person.name);
    }
    
    JVRBaseTableViewDataSource *dataSource = [JVRBaseTableViewDataSource
                                              datasourceForTableView:[[UITableView alloc] init]
                                              withItems:self.persons
                                              usingCellConfigurator:[[JVEPersonCellConfigurator alloc] init]];
    
    XCTAssertNotNil(dataSource, @"DataSource allocation not succesful");
}

@end
