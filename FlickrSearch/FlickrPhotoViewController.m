//
//  FlickrPhotoViewController.m
//  FlickrSearch
//
//  Created by Hefang Li on 10/2/14.
//  Copyright (c) 2014 hfl. All rights reserved.
//

#import "FlickrPhotoViewController.h"
#import "Flickr.h"
#import "FlickrPhoto.h"

@interface FlickrPhotoViewController ()

@end

@implementation FlickrPhotoViewController

-(void)viewDidAppear:(BOOL)animated {
    // 1
    if(self.flickrPhoto.largeImage) {
        self.imageView.image = self.flickrPhoto.largeImage;
    } else {
        // 2
        self.imageView.image = self.flickrPhoto.thumbnail;
        // 3
        [Flickr loadImageForPhoto:self.flickrPhoto thumbnail:NO completionBlock:^(UIImage *photoImage, NSError *error) {
            if(!error) { // 4
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.imageView.image = self.flickrPhoto.largeImage;
                });
            }
        }];
    }
}

- (IBAction)done:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{}];
}

@end
