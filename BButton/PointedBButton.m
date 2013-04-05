//
//  PointedBButton.m
//  BButton Demo
//
//  Created by Sascha Mundstein on 4/5/13.
//  Copyright for BButton (c) 2013 Mathieu Bolard. All rights reserved.
//  Copyright for PointedBButton (c) 2013 Sascha Mundstein. All rights reserved.
//

#import "PointedBButton.h"

@implementation PointedBButton {
    PointedButtonDirection _direction;
}

-(void)setup {
	[super setup];
	_direction = PointedButtonDirectionNone;
}


-(UIBezierPath *)getShapeInRect:(CGRect)rect forContext:(CGContextRef)context{
	
	if (_direction == PointedButtonDirectionNone) {
		return [super getShapeInRect:rect forContext:context];
	}
	
	CGFloat tipWidth = 20.0;
    
    CGMutablePathRef path = CGPathCreateMutable();
	
	CGContextSetLineJoin(context, kCGLineCapRound);
    
    if (_direction == PointedButtonDirectionRight) {
        CGPathMoveToPoint(path, 0, 0, 6);
        CGPathAddArc(path, 0, 6, 6, 6, M_PI, M_PI_2*3, NO);
		CGPathAddArc(path, 0, rect.size.width-tipWidth, 6, 6, M_PI_2*3, M_PI_4*7, NO);
        CGPathAddLineToPoint(path, 0, rect.size.width, rect.size.height/2);
		CGPathAddArc(path, 0, rect.size.width-tipWidth, rect.size.height-6, 6, M_PI_4, M_PI_2, NO);
        CGPathAddArc(path, 0, 6, rect.size.height-6, 6, M_PI_2, M_PI, NO);
        CGPathCloseSubpath(path);
    }
    else if (_direction == PointedButtonDirectionLeft) {
        CGPathMoveToPoint(path, 0, rect.size.width, rect.size.height-6);
        CGPathAddArc(path, 0, rect.size.width-6, rect.size.height-6, 6, 0, M_PI_2, NO);
		CGPathAddArc(path, 0, tipWidth, rect.size.height-6, 6, M_PI_2, M_PI_4*3, NO);
        CGPathAddLineToPoint(path, 0, 0, rect.size.height/2);
		CGPathAddArc(path, 0, tipWidth, 6, 6, M_PI_4*5, M_PI_2*3, NO);
        CGPathAddArc(path, 0, rect.size.width-6, 6, 6, M_PI_2*3, 0, NO);
        CGPathCloseSubpath(path);
    }
    
    return [UIBezierPath bezierPathWithCGPath:path];

}

-(void)setDirection:(PointedButtonDirection)direction {
    _direction = direction;
    [self setNeedsDisplay];
}

@end
