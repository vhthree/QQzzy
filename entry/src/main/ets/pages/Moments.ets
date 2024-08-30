// 该组件为空间动态页面
import router from '@ohos.router';
@Entry
@Component
struct Moments {
  build(){
    Column(){
      Stack({ alignContent: Alignment.Top }){
        Image($rawfile('gradualchange.png'))
          .objectFit(ImageFit.Cover)
          .height(250)
          .width('100%')
        Flex({direction: FlexDirection.Row , justifyContent: FlexAlign.SpaceBetween , alignItems: ItemAlign.Center}){
          Image($r('app.media.ic_back_white'))
            .height(30)
            .width(30)
            .margin({ left: 15})
            .onClick(() => {
              router.back()
            })
          Text('好友动态')
            .fontColor($r('app.color.white'))
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Image($r('app.media.ic_add'))
            .height(30)
            .width(30)
            .margin({ right: 15})
        }.width('100%').height(60).zIndex(1)
          Image($rawfile('qq0.jpg'))
            .width(75).height(75)
            .borderRadius(100)
            .margin({top: 140,right: 200})
        Flex({direction: FlexDirection.Row , justifyContent: FlexAlign.End , alignItems: ItemAlign.End}){
          Text('今日访客  0')
            .margin({bottom: 80 , right: 30})
            .fontFamily($r('sys.float.ohos_id_text_size_body1'))
            .fontColor($r('app.color.white'))
            .fontSize(18)
            .maxLines(1)
        }.width('100%').height(280)
      }.width('100%').height(280)
      Column(){
        Image($rawfile('mo0.jpg'))
          .width('100%')
        Image($rawfile('mo1.jpg'))
          .width('100%')
      }
    }
  }
}