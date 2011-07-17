#include <Foundation/Foundation.h>
#include "MyHelloWorld.h"
main(){
	NSAutoreleasePool *pool =[[NSAutoreleasePool alloc]init];

	id mhw = [[MyHelloWorld alloc] init];
	[mhw print:@"Hello World"];
	[mhw release];

	[pool drain];
	return 0;
}