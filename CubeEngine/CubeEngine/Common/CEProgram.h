//
//  This is Jeff LaMarche's GLProgram OpenGL shader wrapper class from his OpenGL ES 2.0 book.
//  A description of this can be found at his page on the topic:
//  http://iphonedevelopment.blogspot.com/2010/11/opengl-es-20-for-ios-chapter-4.html
//  I've extended this to be able to take programs as NSStrings in addition to files, for baked-in shaders

#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

@interface CEProgram : NSObject 
{
    NSMutableDictionary  *attributeDict;
    NSMutableArray  *uniforms;
    GLuint          program,
	vertShader, 
	fragShader;	
}

@property(readwrite, nonatomic) BOOL initialized;
@property(readwrite, copy, nonatomic) NSString *vertexShaderLog;
@property(readwrite, copy, nonatomic) NSString *fragmentShaderLog;
@property(readwrite, copy, nonatomic) NSString *programLog;

- (id)initWithVertexShaderString:(NSString *)vShaderString 
            fragmentShaderString:(NSString *)fShaderString;

- (void)addAttribute:(NSString *)attributeName;
- (void)addAttribute:(NSString *)attributeName atIndex:(GLuint)index;

- (GLuint)attributeIndex:(NSString *)attributeName;
- (GLuint)uniformIndex:(NSString *)uniformName;
- (BOOL)link;
- (void)use;
- (void)validate;
@end
