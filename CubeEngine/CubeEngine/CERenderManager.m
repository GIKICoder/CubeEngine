//
//  CERenderManager.m
//  CubeEngine
//
//  Created by chance on 4/9/15.
//  Copyright (c) 2015 ByChance. All rights reserved.
//

#import "CERenderManager.h"
#import "CEModel_Rendering.h"
#import "CECamera_Rendering.h"

// render
#import "CERenderer_V.h"
#import "CERenderer_V_VN.h"
#import "CERenderer_Wireframe.h"
#import "CERenderer_AccessoryLine.h"
#import "CERenderer_Dev.h"
#import "CERenderer_DirectionalLight.h"
#import "CERenderer_PointLight.h"


@implementation CERenderManager {
    EAGLContext *_context;
    CERenderer *_testRenderer;
    CERenderer_Wireframe *_wireframeRenderer;
    CERenderer_AccessoryLine *_accessoryLineRenderer;
}

- (instancetype)initWithContext:(EAGLContext *)context
{
    self = [super init];
    if (self) {
        _context = context;
        [EAGLContext setCurrentContext:context];
        _testRenderer = [CERenderer_PointLight shareRenderer];
//        _testRenderer = [CERenderer_DirectionalLight shareRenderer];
//        _testRenderer = [CERenderer_V_VN new];
        [_testRenderer setupRenderer];
        _wireframeRenderer = [CERenderer_Wireframe new];
        _wireframeRenderer.lineWidth = 1.0f;
        [_wireframeRenderer setupRenderer];
        _accessoryLineRenderer = [CERenderer_AccessoryLine new];
        [_accessoryLineRenderer setupRenderer];
        
    }
    return self;
}


- (void)renderModels:(NSArray *)models {
    if (!models.count) return;
    
    glClearColor(1.0, 1.0, 1.0, 1.0);
//    glClearDepthf(0.9978f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    
    // enable depth test
    glEnable(GL_DEPTH_TEST);
//    glDepthFunc(GL_NEVER);
        
    for (CEModel *model in models) {
        // TODO: select render base on current model
        
        _testRenderer.camera = _camera;
        [_testRenderer renderObject:model];
        
        // render wire frame
        if (model.showWireframe && model.wireframeBuffer) {
            _wireframeRenderer.camera = _camera;
            [_wireframeRenderer renderObject:model];
        }
        
        // render accessory line
        if (model.showAccessoryLine) {
            _accessoryLineRenderer.camera = _camera;
            [_accessoryLineRenderer renderObject:model];
        }
    }
#if DEBUG
    [_accessoryLineRenderer renderWorldOriginCoordinate];
#endif
}

@end
