//
//  MacAddressPlugin.m
//  MacAddressPlugin
//
//  Created by Admin on 04/04/13.
//
//

#import "NetworkInterfacesPlugin.h"
#import "IPAddress.h"

@implementation NetworkInterfacesPlugin

- (void)getNetworkInterfaces:(CDVInvokedUrlCommand*)command {
    
    CDVPluginResult* pluginResult = nil;
    InitAddresses();
    GetIPAddresses();
    GetHWAddresses();

    NSMutableArray *resultArray = [[NSMutableArray alloc]init];
    for (int i=0; i<MAXADDRS; ++i)
    {

        unsigned long theAddr;
        
        theAddr = ip_addrs[i];
        
        if (theAddr == 0) break;

        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
        [dict setValue:[NSString stringWithCString:if_names[i] encoding:NSUTF8StringEncoding]  forKey:@"name"];
        [dict setValue:[NSString stringWithCString:hw_addrs[i] encoding:NSUTF8StringEncoding]  forKey:@"macAddress"];
        [dict setValue:[NSString stringWithCString:ip_names[i] encoding:NSUTF8StringEncoding]  forKey:@"ip"];
        [resultArray addObject:dict];

    }
    
    if ([resultArray count]>0) {
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:resultArray];
        
    } else {
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        NSLog(@"error");
    }
    
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
}

@end
