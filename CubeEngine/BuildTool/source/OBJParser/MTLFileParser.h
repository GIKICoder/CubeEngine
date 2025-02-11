//
//  MTLFileParser.h
//  CubeEngine
//
//  Created by chance on 9/23/15.
//  Copyright (c) 2015 ByChance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MaterialInfo.h"

@interface MTLFileParser : NSObject

@property (nonatomic, readonly) NSString *filePath;

+ (MTLFileParser *)parserWithFilePath:(NSString *)filePath;

// @return @{@"MaterialName" : MaterialInfo}
- (NSDictionary *)parse;

@end
