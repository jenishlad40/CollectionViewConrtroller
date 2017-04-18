//
//  ViewController.h
//  CollectionViewDemo
//
//  Created by test on 3/31/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UITextView *textviewOutlet;


@end

