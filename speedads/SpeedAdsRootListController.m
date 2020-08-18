#include "SpeedAdsRootListController.h"

@implementation SpeedAdsRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)SpeedAds{
SparkAppListTableViewController* azfSpeedAds = [[SparkAppListTableViewController alloc] initWithIdentifier:@"co.azozzalfiras.speedads" andKey:@"SpeedAds"];

[self.navigationController pushViewController:azfSpeedAds animated:YES];
	self.navigationItem.hidesBackButton = FALSE;

}

@end
