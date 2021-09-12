//
//  ViewController.m
//  HowDoYouSwift
//
//  Created by Brian Anglin on 9/11/21.
//

#import "ViewController.h"
#import "HowDoYouSwift-Swift.h"
//#import "Hello-Swift.h"-Swift.h' file not fo÷und
//#import <Hello/Hello-Swift.h>
#import "Example.h"

@import Hello;
@import Paywall;

@interface ViewController () <PaywallDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    

    [super viewDidLoad];
   
    Example* example = [[Example alloc] init];
    [example speak];
    Hello * hello = [[Hello alloc] init];
    [hello speak];
    
    [Paywall setDelegate:self];
    
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"view did appear");
    [Paywall presentOn:self cached:false presentationCompletion:nil purchaseCompletion:nil fallback:nil];
}

- (void)shouldTryToRestore {
    
}

- (void)userDidInitiateCheckoutFor:(SKProduct * _Nonnull)product {
    
}

- (void)didDismissPaywall {
    
}

@end
