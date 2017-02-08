//
//  ViewController.m
//  test
//
//  Created by стен on 02.02.17.
//  Copyright (c) 2017 стен. All rights reserved.
//

#import "ViewController.h"
#define WIGH 50000

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 //  self.view.backgroundColor = [UIColor greenColor];
    
    self.scroller = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0,
                                                                   self.view.frame.size.width,
                                                                   self.view.frame.size.height)];
    
  
    
    for(int i = 0; i <WIGH; i+=100)
    {
        self.contentView = [[UIView alloc] initWithFrame:CGRectMake(130, 30+i, 50, 50)];
        self.contentView.backgroundColor = [UIColor redColor];
        [self roundMyView:self.contentView borderRadius:5.0f];
        [self.scroller addSubview:self.contentView];
    }
    
    
   
     [self.scroller setContentSize:CGSizeMake(0, WIGH)];
    [self.view addSubview:self.scroller];
   
    
}

- (void)roundMyView:(UIView*)view borderRadius:(CGFloat)radius

{
    CALayer *layer = [view layer];
  layer.cornerRadius = radius; //Радиус использовать при рисовании закругленные углы для фона слоя
    layer.shadowOffset=CGSizeMake(0, 4); //Смещение (в пунктах) тени слоя
     layer.shadowRadius = 1.0;  //Радиус размытия (в пунктах) используется для отображения тени слоя
    layer.shadowColor = [UIColor blackColor].CGColor; // цвет тенни слоя
    layer.shadowOpacity=5.1; //Непрозрачность тени слоя
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
