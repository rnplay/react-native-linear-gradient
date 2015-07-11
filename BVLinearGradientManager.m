#import "BVLinearGradientManager.h"
#import "BVLinearGradient.h"
#import "RCTBridge.h"

@implementation BVLinearGradientManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
  return [[BVLinearGradient alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(colors, NSArray);
RCT_EXPORT_VIEW_PROPERTY(start, NSArray);
RCT_EXPORT_VIEW_PROPERTY(end, NSArray);
RCT_EXPORT_VIEW_PROPERTY(locations, NSArray);

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

@end
