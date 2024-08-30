//该组件为导航栏，除注册登录页面外，其他页面均需要引用该组件
import router from '@ohos.router';
@Component
export struct navigationBar{
  @State title: string | Resource = $r('app.string.default');
  @State isBack: boolean = true;
  @State isMenu: boolean = true;
  @State isMain: boolean = true;
  @State isMore: boolean = false;
  @State isClose: boolean = false;
  @State bgColor: Resource = $r('app.color.light_blue2');
  build(){
   Row(){
     if(this.isMain == true){
     Column(){
         Image($r('app.media.qq0'))//头像
           .width(40)
           .height(40)
           .borderRadius(100)
           .onClick(() => {
             router.pushUrl({ url: 'pages/Myself' })
           })
     }.width(30).padding({left: 30}).onClick(() => {
       router.pushUrl({ url: 'pages/Myself' })
     })
     }
     if(this.isBack == true){
      Column(){
          Image($r('app.media.ic_back'))
            .width(26)
            .height(26)
            .onClick(() => {
              router.back()
            })
      }.width(50)
     }
      Column(){
        Text(this.title )
          .fontSize(18)
          .fontFamily($r('sys.float.ohos_id_text_size_sub_title2'))
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .fontColor($r('app.color.white'))
      }.layoutWeight(1).padding({left: 20})
      Column(){
        if(this.isMenu == true){
          Image($r('app.media.ic_add'))
            .width(40)
            .height(40)
        }
        if(this.isMore == true){
          Image($r('app.media.ic_more'))
            .width(26)
            .height(26)
        }
      }.width(50)
    }
    .height(60)
    .width('100%')
    .backgroundColor(this.bgColor)
  }
}