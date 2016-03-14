//
//  CCHPointAnnotation.m
//  CCHMapClusterController Example iOS
//
//  Created by Bogdan Hapca on 14/03/16.
//  Copyright © 2016 Claus Höfele. All rights reserved.
//

#import "PointAnnotation.h"

@implementation PointAnnotation

- (NSUInteger)hash {
    NSUInteger hashval = (NSUInteger)self.coordinate.latitude ^ (NSUInteger)self.coordinate.longitude;
    
    if (self.title) {
        hashval ^= self.title.hash;
    }
    
    if (self.subtitle) {
        hashval ^= self.subtitle.hash;
    }
    
    return hashval;
}

- (BOOL)isEqual:(id)object {
    if (self == object) {
        return YES;
    } else if (![object isKindOfClass:[self class]]) {
        return NO;
    } else {
        PointAnnotation *other = (PointAnnotation*)object;
        return (self.coordinate.latitude == other.coordinate.latitude
                && self.coordinate.longitude == other.coordinate.longitude
                && ((self.title == nil && other.title == nil) || [self.title isEqualToString:other.title])
                && ((self.subtitle == nil && other.subtitle == nil) || [self.subtitle isEqualToString:other.subtitle]));
    }
}

@end
