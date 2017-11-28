#import "ReadCookiePlugin.h"

#import <Cordova/CDVAvailability.h>

@implementation ReadCookiePlugin

- (void)pluginInitialize {
}

- (void)getCookie:(CDVInvokedUrlCommand *)command {
  NSString* cookieName = [command.arguments objectAtIndex:0];
  NSMutableString *cookieValue;

  NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
  NSArray<NSHTTPCookie *> *cookies = [storage cookies];
  for (NSHTTPCookie *cookie in cookies) {
      if ([cookie.name isEqualToString:cookieName]) {
          cookieValue = [NSMutableString stringWithString: cookie.value];
      }
  }

  CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:cookieValue];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
