//
//  ViewController.m
//  WebViewDemo
//
//  Created by Satish Chauhan on 10/12/14.
//  Copyright (c) 2014 Vinsol. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *urlTextField;

@end

@implementation ViewController

- (IBAction)openWebView:(id)sender {
    WebViewController *wvc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WebViewControllerSBID"];

    wvc.urlToLoad = self.urlTextField.text;
    [self.navigationController pushViewController:wvc animated:YES];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.urlTextField resignFirstResponder];
    [self openWebView:nil];
    return YES;
}

//- (IBAction)showAlert:(id)sender {
//    UIAlertController *alertController = [UIAlertController
//                                          alertControllerWithTitle:@"Enter web url"
//                                          message:@"Web Url"
//                                          preferredStyle:UIAlertControllerStyleAlert];
//
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//         textField.placeholder = @"http://www.vinsol.com";
//         [textField becomeFirstResponder];
//     }];
//
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Submit"
//                                                       style:UIAlertActionStyleDefault
//                                                     handler:^(UIAlertAction *action) {
//                                                         UITextField *urlTextField = alertController.textFields.firstObject;
//                                                         WebViewController *wvc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WebViewControllerSBID"];
//
//                                                         wvc.urlToLoad = urlTextField.text;
//                                                         [self.navigationController pushViewController:wvc animated:YES];
//                                                     }];
//
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
//                                                           style:UIAlertActionStyleDefault
//                                                         handler:^(UIAlertAction *action) {
//                                                             [alertController dismissViewControllerAnimated:YES completion:nil];
//                                                         }];
//    [alertController addAction:okAction];
//    [alertController addAction:cancelAction];
//    [self presentViewController:alertController animated:YES completion:nil];
//}

@end
