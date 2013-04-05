//
//  PointedBButton.h
//  BButton Demo
//
//  Created by Sascha Mundstein on 4/5/13.
//  Copyright for BButton (c) 2013 Mathieu Bolard. All rights reserved.
//  Copyright for PointedBButton (c) 2013 Sascha Mundstein. All rights reserved.
//

#import "BButton.h"

typedef enum {
	PointedButtonDirectionNone,
    PointedButtonDirectionLeft,
    PointedButtonDirectionRight
} PointedButtonDirection;

@interface PointedBButton : BButton

-(void)setDirection:(PointedButtonDirection)direction;

@end
