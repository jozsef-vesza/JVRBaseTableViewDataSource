//
//  JVEPerson.h
//  Lighter Table View
//
//  Created by Jozsef Vesza on 20/05/14.
//
//

#import <Foundation/Foundation.h>

@interface JVEPerson : NSObject

@property (nonatomic, copy) NSString *name;

+ (instancetype)personCalled:(NSString *)name;

@end
