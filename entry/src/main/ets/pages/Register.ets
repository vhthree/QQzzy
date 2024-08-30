// 注册页面
import router from '@ohos.router';
@Extend(Text) function text_style() {
  .width('25%')
  .fontFamily($r('sys.float.ohos_id_text_size_body2'))
  .fontSize(15)
  .maxLines(1)
}
@Extend(TextInput) function input_style() {
  .width('75%')
  .fontFamily($r('sys.float.ohos_id_text_size_body2'))
  .fontSize(15)
  .placeholderFont({size: 15 , family: $r('sys.float.ohos_id_text_size_body2')})
  .placeholderColor($r('app.color.grey3'))
  .caretColor($r('app.color.green0'))
  .backgroundColor(Color.White)
}
@Extend(Divider) function divider_style() {
  .width('90%')
  .color($r('app.color.grey2'))
  .strokeWidth(0.8)
}
@Entry
@Component
struct Register {
  build() {
    Stack({}) {
      Image($r('app.media.register'))
        .height('100%')
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
        Image($r('app.media.ic_back'))
          .margin({ top: '10.00vp', right: '0.00vp', bottom: '0.00vp', left: '10.00vp' })
          .width(26)
          .height(26)
          .onClick(() => {
            router.back()
          })
        Text('').height(100)
        Text('欢迎注册QQ')
          .fontSize(36)
          .fontFamily($r('sys.float.ohos_id_text_size_headline1'))
          .margin({
            top: '20.00vp',
            right: '0.00vp',
            bottom: '0.00vp',
            left: '30.00vp'
          })
          .fontColor($r('app.color.white'))
        Text('每一天，乐在沟通')
          .fontSize(23)
          .fontFamily($r('sys.float.ohos_id_text_size_headline7'))
          .margin({
            top: '20.00vp',
            right: '0.00vp',
            bottom: '0.00vp',
            left: '30.00vp'
          })
          .fontColor($r('app.color.white'))
        Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
          Row() {
            TextInput({ placeholder: $r('app.string.register_nickname') })
              .input_style()
              .borderRadius('10.00vp')
              .width('98%')
          }.width('90%').height(60).margin({ bottom: 4, top: 4 })
          .borderWidth('0.00vp')
          Row() {
            TextInput({ placeholder: $r('app.string.register_password') })
              .input_style()
              .type(InputType.Password)
              .borderRadius('10.00vp')
              .width('98%')
          }.width('90%').height(60).margin({ bottom: 4 })
          Row() {
            TextInput({ placeholder: $r('app.string.login_country_tips') })
              .input_style()
              .width('20%')
              .borderRadius('10.00vp')
              .margin({ right: 10 })
            TextInput({ placeholder: $r('app.string.login_phone_tips') })
              .input_style()
              .type(InputType.Number)
              .borderRadius('10.00vp')
          }.width('90%').height(60).margin({ bottom: 4 })

        }.width('100%').height(200)
        Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.End, alignItems: ItemAlign.Center }) {
          Row(){
          Checkbox({ name: 'checkbox2' })
            .select(false)
            .selectedColor(0x39a2db)
            .shape(CheckBoxShape.ROUNDED_SQUARE)
            .borderWidth('0.50vp')
            .backgroundColor(Color.White)
            .borderRadius('5.00vp')
          Text() {
            Span($r('app.string.register_privacy1'))
              .fontColor($r('app.color.white'))
              .fontSize(15)
            Span($r('app.string.register_privacy2'))
              .fontSize(15)
              .fontColor($r('app.color.blue'))
              .fontFamily($r('sys.float.ohos_id_text_size_body2'))
            Span($r('app.string.register_privacy3'))
              .fontColor($r('app.color.white'))
              .fontSize(15)
            Span($r('app.string.register_privacy4'))
              .fontSize(15)
              .fontColor($r('app.color.blue'))
              .fontFamily($r('sys.float.ohos_id_text_size_body2'))
          }
          }
          Button($r('app.string.login_button'), { type: ButtonType.Normal })
            .width(170)
            .height(50)
            .backgroundColor($r("app.color.light_blue"))
            .fontSize(18)
            .fontColor($r("app.color.white"))
            .borderRadius(8)
            .margin({ top: 30, bottom: 100 })
            .onClick(() => {
              router.pushUrl({ url: 'pages/Main' })
            })
        }.width('100%').layoutWeight(1)
      }.width('100%').height('100%')
    }
  }
}