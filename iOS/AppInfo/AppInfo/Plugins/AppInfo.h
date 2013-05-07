//
//  AppInfo.h
//  AppInfo
//
//  Created by Admin on 12/03/13.
//
//

#import <Cordova/CDV.h>

@interface AppInfo : CDVPlugin

- (void)getInfo:(CDVInvokedUrlCommand*)command;

@end
