//
//  Cdnt+Publish.m
//  ArchitectureOCDemo
//
//  Created by DaiMing on 2018/6/20.
//  Copyright © 2018年 Starming. All rights reserved.
//

#import "Cdnt+Publish.h"

#import "EmergeCom.h"
#import "PublishCom.h"
#import "ButtonCom.h"

@implementation Cdnt (Publish)

- (void)publishInVC:(UIViewController *)vc {
    NSMutableDictionary *dic = Dic.create.key(@"vcView").val(vc.view)
    
    // 标题
    .key(@"fromAddressBt").val(self.dispatch(CdntAction.clas([ButtonCom class]).mted(@selector(configButton:)).pa(Dic.create.key(@"text").val(@"标题").key(@"action").val(^(void) {
        // 浮层显示
        self.dispatch(CdntAction.clsmtd(EmergeCom_updateConfirmBtTitle).pa(Dic.create.key(@"title").val(@"成长的烦恼").done));
        self.dispatch(CdntAction.clas([PublishCom class]).mted(@selector(showEmergeView:)).toSt(@"focusTitle"));
    }).done)))
    
    // 内容
    .key(@"toAddressBt").val(self.dispatch(CdntAction.clsmtd(@"ButtonCom configButton").pa(Dic.create.key(@"text").val(@"内容").key(@"action").val(^(void) {
        self.dispatch(CdntAction.clas([EmergeCom class]).mted(@selector(updateConfirmBtTitle:)).pa(Dic.create.key(@"title").val(@"这个说来话长...").done));
        self.dispatch(CdntAction.clsmtd(@"PublishCom showEmergeView").toSt(@"focusContent"));
    }).done)))

    // 价格
    .key(@"peopleBt").val(self.dispatch(CdntAction.clsmtd(@"ButtonCom configButton").pa(Dic.create.key(@"text").val(@"价格").key(@"action").val(^(void) {
        self.dispatch(CdntAction.clsmtd(@"EmergeCom updateConfirmBtTitle").pa(Dic.create.key(@"title").val(@"5元").done));
        self.dispatch(CdntAction.clsmtd(@"PublishCom showEmergeView").toSt(@"focusPrice"));
    }).done)))
    
    // 浮层确认选择
    .key(@"emergeView").val(self.dispatch(CdntAction.clsmtd(@"EmergeCom emergeView").pa(Dic.create.key(@"confirmBt").val(self.dispatch(CdntAction.clsmtd(@"ButtonCom configButton").pa(Dic.create.key(@"text").val(@"").key(@"action").val(^(void) {
        // 根据状态执行不同的内容
        self.dispatch(CdntAction.clsmtd(@"PublishCom confirmEmerge").pa(Dic.create.key(@"title").val(self.dispatch(CdntAction.clsmtd(@"EmergeCom confirmBtTitle"))).done));
        self.dispatch(CdntAction.clsmtd(@"PublishCom hideEmergeView").toSt(@"emergeHide"));
    }).done))).done)))
    
    // 发布按钮
    .key(@"publishBt").val(self.dispatch(CdntAction.clsmtd(@"ButtonCom configButton").pa(Dic.create.key(@"text").val(@"发布").key(@"action").val(^(void) {
        self.dispatch(CdntAction.clsmtd(@"PublishCom publishing"));
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self notifyObservers:@"publishOk"];
        });
    }).done)))
    
    .done;
    
    self.dispatch(CdntAction.cls(@"PublishCom").mtd(@"viewInVC").pa(dic));
    self.dispatch(CdntAction.clsmtd(@"PublishCom checkPublish"));
    
    // 切面
    // 统计
    self.middleware(@"PublishCom showEmergeView").addMiddlewareAction(CdntAction.clsmtd(@"AopLogCom emergeLog").pa(Dic.create.key(@"actionState").val(@"show").done));
    self.middleware(@"PublishCom confirmEmerge").addMiddlewareAction(CdntAction.clsmtd(@"AopLogCom emergeLog").pa(Dic.create.key(@"actionState").val(@"confirm").done));
    
    // 处理是否可发布的逻辑
    self.middleware(@"PublishCom hideEmergeView").addMiddlewareAction(CdntAction.clsmtd(@"PublishCom checkPublish"));
    
    // 观察者管理
    self.observerWithIdentifier(@"publishOk").addObserver(CdntAction.clsmtd(@"PublishCom reset")).addObserver(CdntAction.clsmtd(@"PublishCom checkPublish"));
    
    CdntAction *act = CdntAction.clas([ButtonCom class]).mted(@selector(configButton:));
    act.mted(@selector(configButton:));
}

@end
