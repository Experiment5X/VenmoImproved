#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <substrate.h>


%hook VENAudiencePicker

- (void)layoutSubviews
{
	%orig;

	// make the selected audience defaultly ParticipantsOnly
	[self setValue: [NSNumber numberWithInt: 1] forKey: @"selectedAudience"];
}

%end
