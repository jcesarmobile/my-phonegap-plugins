//
//  TTSAndSpeechRecognitionPlugin.h
//  TTSPlugin
//
//  Created by Admin on 30/04/13.
//
//

#import <Cordova/CDV.h>
#import "iSpeechSDK.h"

@interface TTSAndSpeechRecognitionPlugin : CDVPlugin <ISSpeechSynthesisDelegate,ISSpeechRecognitionDelegate>

-(void)speak:(CDVInvokedUrlCommand*)command;
-(void)recognize:(CDVInvokedUrlCommand*)command;

@end
