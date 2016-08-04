//
//  ViewController.h
//  ZipSampleiOS
//
//  Created by Admin on 04/08/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZipManager.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *zipPwd;
@property (weak, nonatomic) IBOutlet UITextField *pwdUnZip;
@property (weak, nonatomic) IBOutlet UILabel *status;

- (IBAction)zipBtnAction:(id)sender;
- (IBAction)unZipBtnAction:(id)sender;

@end

