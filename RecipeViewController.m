//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Jake Estepp on 6/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"


@interface RecipeViewController () <UITableViewDataSource>

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    
    tableView.dataSource = self;
    
    //Register the cell
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    
    
    [self.view addSubview:tableView];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //dequeue the cell
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    
    //  UITableViewCell *cell = [UITableViewCell new];
    
    //----------------------was recipe
    cell.textLabel.text = [self RARecipes] [indexPath.row];
    
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //----------was recipe
    return [self RARecipes].count;
    
}

//-(NSArray *)Recipe{
//    return @[];
//}


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
