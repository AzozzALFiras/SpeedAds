@import UIKit;
#import "SparkAppList.h"


NSString* bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier]; // This is dependent on where it is called, may not be the correct method for your tweak!

%group azfAVPlayer
%hook AVPlayer
- (void)setRate:(float)arg1 {
if([SparkAppList doesIdentifier:@"co.azozzalfiras.speedads" andKey:@"SpeedAds" containBundleIdentifier:bundleIdentifier]){
@try{
arg1 = 30;
%orig;
} @catch(NSException *e){
}
} else {
return %orig;
}
}
%end
%end
%ctor{
%init(azfAVPlayer);
}
