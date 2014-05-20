//
//  JVEPerson.m
//  Lighter Table View
//
//  Created by Jozsef Vesza on 20/05/14.
//
//

#import "JVEPerson.h"

@implementation JVEPerson

+ (instancetype)personCalled:(NSString *)name
{
    return [[self alloc] initWithName:name];
}

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self)
    {
        _name = name;
    }
    return self;
}

@end
