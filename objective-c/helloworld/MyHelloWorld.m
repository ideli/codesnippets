#include <Foundation/Foundation.h>
#include "MyHelloWorld.h"

@implementation MyHelloWorld

- (void) print: (NSString *) msg {
	printf(" => C: Hello\n");
	NSLog(@"=> NSLog: msg='%@!'",msg);
}
@end