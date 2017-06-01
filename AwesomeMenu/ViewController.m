//
//  ViewController.m
//  AwesomeMenu
//
//  Created by 沙缚柩 on 2017/5/19.
//
//

#import "ViewController.h"
#import "AwesomeMenu.h"

@interface ViewController ()<AwesomeMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
    UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
    
    UIImage *starImage = [UIImage imageNamed:@"icon-star.png"];
    
    // Default Menu
    
    AwesomeMenuItem *starMenuItem1 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    starMenuItem1.endPoint = CGPointMake(50, 100);
    
    AwesomeMenuItem *starMenuItem2 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    starMenuItem2.endPoint = CGPointMake(100, 100);
    
    AwesomeMenuItem *starMenuItem3 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    AwesomeMenuItem *starMenuItem4 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    AwesomeMenuItem *starMenuItem5 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    AwesomeMenuItem *starMenuItem6 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    AwesomeMenuItem *starMenuItem7 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    AwesomeMenuItem *starMenuItem8 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    AwesomeMenuItem *starMenuItem9 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
                                                           highlightedImage:storyMenuItemImagePressed
                                                               ContentImage:starImage
                                                    highlightedContentImage:nil];
    
    NSArray *menuItems = [NSArray arrayWithObjects:starMenuItem1, starMenuItem2, starMenuItem3, starMenuItem4, starMenuItem5, starMenuItem6, starMenuItem7,starMenuItem8,starMenuItem9, nil];
    
    AwesomeMenuItem *startItem = [[AwesomeMenuItem alloc] initWithImage:[UIImage imageNamed:@"bg-addbutton.png"]
                                                       highlightedImage:[UIImage imageNamed:@"bg-addbutton-highlighted.png"]
                                                           ContentImage:[UIImage imageNamed:@"icon-plus.png"]
                                                highlightedContentImage:[UIImage imageNamed:@"icon-plus-highlighted.png"]];
    
    AwesomeMenu *menu = [[AwesomeMenu alloc] initWithFrame:self.view.bounds startItem:startItem menuItems:menuItems];
    menu.delegate = self;
//    menu.rotateAddButton = NO;
//    menu.expandRotation = M_PI * 2;
    menu.menuWholeAngle = M_PI * .5;
//    menu.nearRadius = 100.0f;
//    menu.farRadius = 300.0f;
    menu.startPoint = CGPointMake(200, 300);
    menu.endRadius = 50.0f;
    menu.rotateAngle = M_PI_4;
    [self.view addSubview:menu];
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(200, 300, 20, 20)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
}



/* ⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇ */
/* ⬇⬇⬇⬇⬇⬇ GET RESPONSE OF MENU ⬇⬇⬇⬇⬇⬇ */
/* ⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇ */

- (void)awesomeMenu:(AwesomeMenu *)menu didSelectIndex:(NSInteger)idx
{
    NSLog(@"Select the index : %d",idx);
}
- (void)awesomeMenuDidFinishAnimationClose:(AwesomeMenu *)menu {
    NSLog(@"Menu was closed!");
}
- (void)awesomeMenuDidFinishAnimationOpen:(AwesomeMenu *)menu {
    NSLog(@"Menu is open!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
