//
//  ViewController.m
//  web
//
//  Created by Jason on 2018/1/17.
//  Copyright © 2018年 Jason. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
//    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    [self.view addSubview:webView];
    webView.UIDelegate = self;
    webView.navigationDelegate = self;
   NSString *strHTML = @"<p><strong>很经典的黑色后背纯雪纺透视装到货了哈</strong><strong>&nbsp;</strong></p><p><strong>前面莫代尔&nbsp;手感顺滑 柔软 &nbsp;手感不错</strong></p><p><strong>后面薄薄的雪纺纱</strong></p><p><strong>腰节处开叉</strong></p><p><strong>很大气，超有范儿的一款&nbsp; 这个年代随时随地 都可见的欧美街头范儿</strong></p><p><strong>后背透、透、透</strong></p><p><strong>165身高 96J穿起来大概在膝盖不到10CM的位置</strong></p><p>&nbsp;</p><p><strong>亲们啊~ 特别美得一款，穿起来超级有范，</strong></p><p><strong>看着特别不起眼的一件衣服，但上身效果特别好，</strong></p><p><strong>背面全部透视的雪纺黑纱，特别性感，</strong></p><p><strong>里面需要配一款黑色吊带，两侧带开叉的设计，亲们赶紧下手吧~~&middot;</strong></p><p>&nbsp;</p><p><strong>面料： 正面莫代尔背面：雪纺纱&nbsp;</strong></p><p><strong>Label:</strong>无主标 无尺码标&nbsp; 有吊牌 普通包装</p><p>&nbsp;</p><p><strong>Size</strong>：平铺尺寸,由于手工测量,会有2~3厘米的误差</p><p>~SIZE=CM</p><p>胸围：126连肩袖长：65&nbsp; 前衣长：80 后衣长：90</p><p>&nbsp;<img style=\"border-width:0;border-image-width:initial\" src=\"https://img.alicdn.com/imgextra/i4/676496646/T2zdB0X9NXXXXXXXXX_!!676496646.jpg\" width=\"100%\" height=\"((348 / 500) * 100)%\" align=\"absmiddle\">&nbsp;&nbsp;</p><p>&nbsp;</p>";
    [webView loadHTMLString:strHTML baseURL:nil];

}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    //修改字体大小 300%
    [ webView evaluateJavaScript:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust= '200%'" completionHandler:nil];
    
    //修改字体颜色  #9098b8
    [ webView evaluateJavaScript:@"document.getElementsByTagName('body')[0].style.webkitTextFillColor= '#0078f0'" completionHandler:nil];
    
}


- (IBAction)pushVC:(id)sender {
    [self performSegueWithIdentifier:@"show" sender:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)function{
    NSString *strHTML = @"<p><strong>很经典的黑色后背纯雪纺透视装到货了哈</strong><strong>&nbsp;</strong></p><p><strong>前面莫代尔&nbsp;手感顺滑 柔软 &nbsp;手感不错</strong></p><p><strong>后面薄薄的雪纺纱</strong></p><p><strong>腰节处开叉</strong></p><p><strong>很大气，超有范儿的一款&nbsp; 这个年代随时随地 都可见的欧美街头范儿</strong></p><p><strong>后背透、透、透</strong></p><p><strong>165身高 96J穿起来大概在膝盖不到10CM的位置</strong></p><p>&nbsp;</p><p><strong>亲们啊~ 特别美得一款，穿起来超级有范，</strong></p><p><strong>看着特别不起眼的一件衣服，但上身效果特别好，</strong></p><p><strong>背面全部透视的雪纺黑纱，特别性感，</strong></p><p><strong>里面需要配一款黑色吊带，两侧带开叉的设计，亲们赶紧下手吧~~&middot;</strong></p><p>&nbsp;</p><p><strong>面料： 正面莫代尔背面：雪纺纱&nbsp;</strong></p><p><strong>Label:</strong>无主标 无尺码标&nbsp; 有吊牌 普通包装</p><p>&nbsp;</p><p><strong>Size</strong>：平铺尺寸,由于手工测量,会有2~3厘米的误差</p><p>~SIZE=CM</p><p>胸围：126连肩袖长：65&nbsp; 前衣长：80 后衣长：90</p><p>&nbsp;<img style=\"border-width:0;border-image-width:initial\" src=\"https://img.alicdn.com/imgextra/i4/676496646/T2zdB0X9NXXXXXXXXX_!!676496646.jpg\" width=\"100%\" height=\"((348 / 500) * 100)%\" align=\"absmiddle\">&nbsp;&nbsp;</p><p>&nbsp;</p>";
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    
    [webView loadHTMLString:strHTML baseURL:nil];
}

@end
