// 该组件为入口页面
import router from '@ohos.router';
@Entry
@Component
struct Index {
  build() {
    Stack({alignContent: Alignment.Bottom}){
      Image($r('app.media.welcome'))
        .height('50%')
        .margin({ top: '0.00vp', right: '0.00vp', bottom: '60.00%', left: '0.00vp' })
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Button($r('app.string.splash_register') , { type: ButtonType.Normal })
          .width(150)
          .height(50)
          .backgroundColor($r("app.color.white"))
          .fontSize(20)
          .fontColor($r("app.color.black"))
          .borderRadius(10)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Register' })
          })
          .padding({ top: '0.00vp', right: '16.00vp', bottom: '0.00vp', left: '16.00vp' })
          .borderWidth('2.00vp')
          .borderColor('#7a000000')
        Button($r('app.string.splash_login'), { type: ButtonType.Normal })
          .width(150)
          .height(50)

          .fontSize(20)
          .fontColor($r("app.color.white"))
          .borderRadius(10)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Login' })
          })
          .backgroundImageSize({ width: '', height: '' })
          .backgroundColor('#ff009aff')
      }
      .width('100%')
      .height(90)
      .padding(20)
    }
    .width('100%')
    .height('100%')
  }
}