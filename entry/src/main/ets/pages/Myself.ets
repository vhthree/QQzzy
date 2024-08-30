//个人信息界面
import { optionItem } from '../common/utils/optionItem'
import router from '@ohos.router';
@Entry
@Component
struct Myself {
  private headerImg: string = 'qq0.jpg'
  private name: string = '张泽渊'
  private userId: string = '1627018151'
  private scrollerForScroll: Scroller = new Scroller()
  private settingItemOnClick(event: ClickEvent) {
    router.pushUrl({ url: 'pages/Setting'})
  }
  build() {
    Column(){
      Stack({}) {
        Image($r('app.media.gradualchange'))
          .width('100%')
        Column() {
          Row() {
            Image($r('app.media.dk'))
              .width(26)
              .height(26)
              .margin({right: 10})
            Text('今天还没打卡哦').fontColor($r('app.color.white')).margin({right: 150})
            Image($r('app.media.ic_close'))
              .width(26)
              .height(26)
              .onClick(() => {
                router.back()
              })
          }.margin({top: 20})
          Row() {
            Image($rawfile(this.headerImg))
              .width(80)
              .height(80)
              .borderRadius(100)
              .margin(20)
            Column() {
              Text(this.name)
                .fontFamily($r('sys.float.ohos_id_text_size_sub_title1'))
                .fontSize(28)
                .textOverflow({ overflow: TextOverflow.Clip })
                .maxLines(1)
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 10 })
                .fontColor($r('app.color.white'))
              Image($r('app.media.level'))
                .width('80%')
              Text() {
                Span('编辑个性签名')
                  .fontFamily($r('sys.float.ohos_id_text_size_body1'))
                  .fontSize(18)
                  .fontColor($r('app.color.white'))
              }
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
            }
            .alignItems(HorizontalAlign.Start)
            .layoutWeight(1)
            Image($r('app.media.ic_qr_code'))
              .width(30)
              .height(30)
              .margin({right: 20})
          }
          .width('100%')
          .height(180)
        }
      }.width('100%').height('35%')
      Column() {
        List() {
          optionItem({
            img: $r('app.media.s1'),
            context: $r('app.string.me_service1'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s2'),
            context: $r('app.string.me_service2'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s3'),
            context: $r('app.string.me_service3'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s4'),
            context: $r('app.string.me_service4'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s5'),
            context: $r('app.string.me_service5'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s6'),
            context: $r('app.string.me_service6'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s7'),
            context: $r('app.string.me_service7'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s8'),
            context: $r('app.string.me_service8'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s9'),
            context: $r('app.string.me_service9'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s10'),
            context: $r('app.string.me_service10'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.s11'),
            context: $r('app.string.me_service11'),
            isNext: true,
            marginTop: 0
          })
        }.height('55%')
      }
      Row(){
        Column() {
          Image($r('app.media.b1'))
            .objectFit(ImageFit.Contain)
            .width(30).height(30)
          Text('设置')
            .fontSize(20)
            .fontFamily($r('sys.float.ohos_id_text_size_body2'))
            .margin({ top: 3 })
        }.width('25%')
        Column() {
          Image($r('app.media.b2'))
            .objectFit(ImageFit.Contain)
            .width(30).height(30)
          Text('夜间')
            .fontSize(20)
            .fontFamily($r('sys.float.ohos_id_text_size_body2'))
            .margin({ top: 3 })
        }.width('25%')
        Column() {
          Image($r('app.media.b3'))
            .objectFit(ImageFit.Contain)
            .width(30).height(30)
          Text('14天')
            .fontSize(20)
            .fontFamily($r('sys.float.ohos_id_text_size_body2'))
            .margin({ top: 3 })
        }.width('25%')
        Column() {
          Image($r('app.media.b4'))
            .objectFit(ImageFit.Contain)
            .width(30).height(30)
          Text('当地天气')
            .fontSize(20)
            .fontFamily($r('sys.float.ohos_id_text_size_body2'))
            .margin({ top: 3 })
        }.width('25%')
      }.height('10%').margin({top: 7}).backgroundColor($r('app.color.white')).onClick(this.settingItemOnClick).width('100%')
    }
    .height('100%')
    .backgroundColor($r('app.color.grey2'))
  }
}