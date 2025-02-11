//
//  CEShaderMatrix2.m
//  CubeEngine
//
//  Created by chance on 8/6/15.
//  Copyright (c) 2015 ByChance. All rights reserved.
//

#import "CEUniformMatrix2.h"

@implementation CEUniformMatrix2

- (void)setMatrix2:(GLKMatrix2)matrix2 {
    if (_index < 0) return;
    BOOL allEqual = YES;
    for (int i = 0; i < 4; i++) {
        if (allEqual) {
            allEqual = (_matrix2.m[i] == matrix2.m[i]);
        } else {
            break;
        }
    }
    if (allEqual) return;
    
    _matrix2 = matrix2;
    glUniformMatrix2fv(_index, 1, GL_FALSE, matrix2.m);
}


- (NSString *)dataType {
    return @"mat2";
}

@end
