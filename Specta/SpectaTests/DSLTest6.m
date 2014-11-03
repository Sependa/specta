#import "TestHelper.h"

static SPTVoidBlock actionBlock = ^{};

SpecBegin(_DSLTest6)

describe(@"group", ^{

  action(actionBlock);

});

SpecEnd

@interface DSLTest6 : XCTestCase; @end
@implementation DSLTest6

- (void)testSingleExampleGroup {
  SPTExampleGroup *rootGroup = [_DSLTest6Spec spt_spec].rootGroup;

  SPTExampleGroup *group = rootGroup.children[0];

  SPTAssertEqual([group.actionArray count], 1);
  SPTAssertEqualObjects(group.actionArray[0], actionBlock);
}

@end
