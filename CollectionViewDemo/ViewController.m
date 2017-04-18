//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by test on 3/31/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
@interface ViewController ()
@property(strong,nonatomic)NSArray *imageNames;
@property(strong,nonatomic)NSArray *imaggDetails;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageNames = [[NSArray alloc] initWithObjects:@"images-2.jpeg",@"images-3.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-6.jpeg", nil];
    
     self.imaggDetails = [[NSArray alloc] initWithObjects:@"images-2.jpeg",@"images-3.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-6.jpeg", nil];
}

/*
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:
(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
    }
    return YES;
}
*/
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    self.textviewOutlet.text = [self.imaggDetails objectAtIndex:indexPath.row];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return self.imageNames.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell  *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];

    cell.myImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.imageNames objectAtIndex:indexPath.row]]];
    return cell;
}
@end
