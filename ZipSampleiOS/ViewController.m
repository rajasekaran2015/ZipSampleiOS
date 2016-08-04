//
//  ViewController.m
//  ZipSampleiOS
//
//  Created by Admin on 04/08/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    ZipManager *zipManagerObj;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    zipManagerObj = [[ZipManager alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)zipBtnAction:(id)sender {
    
    NSString *applePdf = [[NSBundle mainBundle] pathForResource:@"Apple" ofType:@"pdf"];
    NSString *androidPdf = [[NSBundle mainBundle] pathForResource:@"Android" ofType:@"pdf"];
    NSArray *files = [NSArray arrayWithObjects:applePdf, androidPdf, nil];
   
    self.status.text = [zipManagerObj createZipArchiveWithFiles:files andPassword:self.zipPwd.text];
}

- (IBAction)unZipBtnAction:(id)sender {
    self.status.text = [zipManagerObj unZipArchiveWithPassword:self.pwdUnZip.text];
}



@end
