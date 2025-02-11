//
//  CEScene.h
//  CubeEngine
//
//  Created by chance on 15/3/9.
//  Copyright (c) 2015年 ByChance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CEModel.h"
#import "CECamera.h"
#import "CELight.h"

/**
 CEScene is like a container for rendering metarials, including:
 - 3D Objects
 - Camera
 - Light
 
 Note: It is designed to be thread safe.
 Note: If a model or a light is added to a scene, it can not be added to another
 scene.
 */
@interface CEScene : NSObject

@property (nonatomic, readonly) NSArray *allModels;
@property (nonatomic, retain) CELight *mainLight;
@property (nonatomic, readonly) CECamera *camera;
@property (nonatomic, copy) UIColor *backgroundColor;

// Model
- (void)addModel:(CEModel *)model;
- (void)removeModel:(CEModel *)model;


@end

