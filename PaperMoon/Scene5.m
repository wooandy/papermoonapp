//
//  Scene5.m
//  PaperMoon
//
//  Created by Andy Woo on 3/1/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Scene5.h"
#import "ClippingNode.h"
#import "SettingLayer.h"

@implementation Scene5

+(id) scene
{
    CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
    CCScene *scene = [CCScene node];
    
    Scene5Layer *scene5Layer = [Scene5Layer node];
    CGSize screenSize = [CCDirector sharedDirector].winSize;
    CGRect rect = CGRectMake(0, 0, screenSize.width, screenSize.height);
    ClippingNode *clipNode = [ClippingNode clippingNodeWithRect:rect];
    [clipNode addChild:scene5Layer];
    [scene addChild:clipNode z:1 tag:1];
    clipNode=nil;
    
    SettingLayer *settingLayer = [SettingLayer node];
    [settingLayer setVisible:NO];
    [scene addChild:settingLayer z:0 tag:2];
    
    return scene;
}

-(id) init
{
    self = [super init];
    if (self != nil)
    {
        
    }
    return self;
}
// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
    //    [self.gooma release];
    //   [self.fox release];
    CCLOG(@"%@: %@", NSStringFromSelector(_cmd), self);
    
}

@end
