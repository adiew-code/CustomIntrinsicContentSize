# CustomIntrinsicContentSize
自定义视图添加固有内容尺寸

使用AutoLayout 对于UILable、UIButton、UIImageView等视图都可以根据自身内容而自己计算自己的Size(包括height、width)

而对于普通的UIView是没有这种特性的，这里增加这种特性，使用时，只需要：


    TestView *view = [[TestView alloc]init];
    view.params = @{@"image":@"shang",//图片名称，可替换
                    @"text":@"fdasdfajslkfjdaslfjdlsajfl;asjflk;dfasfjla"};//文本内容，可随意增加
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop    relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:50];
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    [self.view addConstraints:@[top,leading]];
    
    

只是设置了View的top、leading两个约束就可以让View本身自己根据其内容params（image、text内容）等自动计算其固有内容尺寸大小，所以可以像UILable一样，不用设置其他宽高约束
