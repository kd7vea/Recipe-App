//
//  RARecipes.m
//  Recipe App
//
//  Created by Jake Estepp on 6/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RARecipes.h"
#import <Foundation/Foundation.h>

@interface RARecipes : NSObject

+ (NSInteger)count;

+ (NSDictionary *)recipeAtIndex:(NSInteger)index;

+ (NSString *)titleAtIndex:(NSInteger)index;

+ (NSString *)descriptionAtIndex:(NSInteger)index;

+ (NSInteger)ingredientCountAtIndex:(NSInteger)index;

+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

@end