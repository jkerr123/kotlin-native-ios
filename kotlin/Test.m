//
//  Test.m
//  kotlin
//
//  Created by Jamie Kerr on 07/12/2018.
//  Copyright © 2018 Jamie Kerr. All rights reserved.
//

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_REMAP_MODULE(SomeSwift, Test, NSObject)
RCT_EXTERN_METHOD(myMethod)
@end
