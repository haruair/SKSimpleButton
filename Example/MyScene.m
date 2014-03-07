//
//  MyScene.m
//  SKSimpleButton
//
//  Created by haruair on 7/03/2014.
//  Copyright (c) 2014 haruair. All rights reserved.
//

#import "MyScene.h"
#import "SKSimpleButton.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, SKSimpleButton!";
        myLabel.fontSize = 20;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame) * 1.5);
        
        [self addChild:myLabel];
        
        /* Add a button with textures */
        SKTextureAtlas * atlas = [SKTextureAtlas atlasNamed:@"button"];
        
        SKTexture * defaultTexture = [atlas textureNamed:@"button-home-off"];
        SKTexture * touchedTexture = [atlas textureNamed:@"button-home-on"];
        
        SKSimpleButton * homeButton = [[SKSimpleButton alloc] initWithDefaultTexture:defaultTexture
                                                                   andTouchedTexture:touchedTexture];
        
        homeButton.position = CGPointMake(CGRectGetMidX(self.frame),
                                          CGRectGetMidY(self.frame));

        [homeButton setMethod:^{
            myLabel.text = @"BOOM!";
            myLabel.fontSize = myLabel.fontSize + 10.0;
        }];
        
        [self addChild:homeButton];

    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    [SKSimpleButton doButtonsActionBegan:self touches:touches withEvent:event];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch ended */
    [SKSimpleButton doButtonsActionEnded:self touches:touches withEvent:event];
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
