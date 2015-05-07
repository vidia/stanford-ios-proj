//
//  CardGameViewController.m
//  Matchismo
//
//  Created by David Tschida on 1/22/14.
//
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelCount;

@property (nonatomic) int count;

@end

@implementation CardGameViewController

- (void) setCount:(int)count
{
    _count=count;
    self.labelCount.text = [NSString stringWithFormat:@"Flips: %d", self.count];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:Nil forState:UIControlStateNormal];

        [sender setBackgroundColor:[UIColor colorWithWhite:100.0 alpha:100.0]];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    self.count++;
    
}

@end
