//
//  SKSimpleButton.h
//  SKSimpleButton
//
//  Created by haruair on 5/03/2014.
//  Copyright (c) 2014 haruair. All rights reserved.
//
//

#import <SpriteKit/SpriteKit.h>

typedef void (^AnonBlock)();

@interface SKSimpleButton : SKSpriteNode

-(id) initWithDefaultTexture:(SKTexture *) defaultTexture andTouchedTexture:(SKTexture *)touchedTexture;

-(void) setMethod:(void (^)()) returnMethod;
-(void) runMethod;

+(BOOL) isButtonPressed:(NSArray *) nodes;
+(void) removeButtonPressed:(NSArray *) nodes;

+(void) doButtonsActionBegan:(SKNode *)node touches:(NSSet *)touches withEvent:(UIEvent *)event;
+(void) doButtonsActionEnded:(SKNode *)node touches:(NSSet *)touches withEvent:(UIEvent *)event;

@end
