#import "FunnyCircularIndicatorPlugin.h"
#if __has_include(<funny_circular_indicator/funny_circular_indicator-Swift.h>)
#import <funny_circular_indicator/funny_circular_indicator-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "funny_circular_indicator-Swift.h"
#endif

@implementation FunnyCircularIndicatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFunnyCircularIndicatorPlugin registerWithRegistrar:registrar];
}
@end
