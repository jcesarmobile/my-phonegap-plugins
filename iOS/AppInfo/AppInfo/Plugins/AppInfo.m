//
//  AppInfo.m
//  AppInfo
//
//  Created by Admin on 12/03/13.
//
//

#import "AppInfo.h"

@implementation AppInfo

- (void)getInfo:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = nil;
    NSDictionary * result = [[NSBundle mainBundle] infoDictionary];
    //NSLog(@"dictionary %@",result);
    NSMutableDictionary * myDict = [[NSMutableDictionary alloc]init];
    [myDict setValue:[result objectForKey:@"CFBundleName" ] forKey:@"CFBundleName"];
    [myDict setValue:[result objectForKey:@"CFBundleShortVersionString" ] forKey:@"CFBundleShortVersionString"];
    [myDict setValue:[result objectForKey:@"CFBundleVersion" ] forKey:@"CFBundleVersion"];
    if (result != nil) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:myDict];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No info"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
