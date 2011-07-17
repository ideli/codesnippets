#include <Foundation/Foundation.h>
main(){
	NSAutoreleasePool *pool =[[NSAutoreleasePool alloc]init];

	NSLog(@"Running some tests now....");

	NSArray *distributions = [NSArray arrayWithObjects: @"SELinux", @"FreeBSD", @"RedHat", @"SuSe", @"Fedory", nil];
	NSLog(@"%@",distributions);


	NSLog(@"Tests done!");
	
	[pool drain];
	return 0;
}