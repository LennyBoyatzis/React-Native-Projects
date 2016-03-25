//
//  ProcessString.m
//  FirstBridge
//
//  Created by Leo Boyatzis on 25/03/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"

@interface ProcessString : NSObject <RCTBridgeModule>

@end

@implementation ProcessString

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(processString:(NSString *)input callback:(RCTResponseSenderBlock)callback)
{
  callback(@[[input stringByReplacingOccurrencesOfString:@"React" withString:@"Objective-c"]]);
}

@end



