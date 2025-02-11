//
//  CEShaderVariableInfo_setter.h
//  CubeEngine
//
//  Created by chance on 9/1/15.
//  Copyright (c) 2015 ByChance. All rights reserved.
//

#import "CEShaderVariableInfo.h"

@interface CEShaderVariableInfo ()

@property (nonatomic, assign, readwrite) uint32_t variableID;
@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy, readwrite) NSString *type;
@property (nonatomic, copy, readwrite) NSString *precision;
@property (nonatomic, assign, readwrite) CEShaderVariableUsage usage;
@property (nonatomic, assign, readwrite) int arrayItemCount;

@end
