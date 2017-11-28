#import <Cordova/CDVPlugin.h>

@interface ReadCookiePlugin : CDVPlugin {
}

- (void)getCookie:(CDVInvokedUrlCommand *)command;

@end
