// 该组件为登录页面
import router from '@ohos.router';
@Extend(Text)
function text_style() {
  .width('25%')
  .fontFamily($r('sys.float.ohos_id_text_size_body2'))
  .fontSize(15)
  .maxLines(1)
}
@Extend(Text)
function link_text_style(fontSize: number) {
  .fontSize(fontSize)
  .fontColor($r('app.color.blue_link'))
  .fontFamily($r('sys.float.ohos_id_text_size_body2'))
  .maxLines(1)
}
@Extend(TextInput)
function input_style() {
  .width('75%')
  .fontFamily($r('sys.float.ohos_id_text_size_body2'))
  .fontSize(15)
  .placeholderFont({ size: 15, family: $r('sys.float.ohos_id_text_size_body2') })
  .placeholderColor($r('app.color.grey3'))
  .caretColor($r('app.color.green0'))
  .backgroundColor(Color.White)
}
@Extend(Divider)
function divider_style() {
  .width('90%')
  .color($r('app.color.grey2'))
  .strokeWidth(0.8)
}
@Entry
@Component
struct Login {
  build() {
    Stack({}) {
      Image($r('app.media.gradualchange'))
        .height('100%')
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
        Image($r('app.media.ic_back'))
          .margin({ top: '10.00vp', right: '0.00vp', bottom: '0.00vp', left: '10.00vp' })
          .width(26)
          .height(26)
          .onClick(() => {
            router.back()
          })
        Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
          Image($r('app.media.qq'))
            .height('50%')
            .width('auto')
          Row() {
            TextInput({ placeholder: 'QID/邮箱' })
              .input_style()
              .borderRadius('5.00vp')
              .width('90%')
          }.height(60).margin({ bottom: 4, top: 4 })
          Row() {
            TextInput({ placeholder: '输入QQ密码' })
              .input_style()
              .type(InputType.Password)
              .borderRadius('5.00vp')
              .width('90%')
          }.height(60).margin({ bottom: 4 })
          Row() {
            Checkbox({ name: 'checkbox1' })
              .select(false)
              .selectedColor(0x39a2db)
              .shape(CheckBoxShape.ROUNDED_SQUARE)
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
          Button($r('app.string.splash_login'), { type: ButtonType.Normal })
            .width('90%')
            .height(50)
            .backgroundColor($r("app.color.light_blue"))
            .fontSize(18)
            .fontColor($r("app.color.white"))
            .borderRadius(8)
            .margin({ top: 30 })
            .onClick(() => {
              router.pushUrl({ url: 'pages/Main' })
            })
        }
        .width('100%')
        .height(400)
        .align(Alignment.Center)
        .margin({
          top: '50.00vp',
          right: '0.00vp',
          bottom: '10.00vp',
          left: '0.00vp'
        })
        Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.End, alignItems: ItemAlign.Center }) {
          Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.End, justifyContent: FlexAlign.Center }) {
            Text($r('app.string.login_repass'))
              .link_text_style(12)
              .margin({ right: 5 })
            Text('|')
              .link_text_style(12)
              .margin({ right: 5 })
            Text($r('app.string.login_freeze'))
              .link_text_style(12)
              .margin({ right: 5 })
            Text('|')
              .link_text_style(12)
              .margin({ right: 5 })
            Text($r('app.string.login_security'))
              .link_text_style(12)
          }.width('100%').padding({ bottom: 30, top: 60 })
        }.width('100%').layoutWeight(1)
      }
    }
  }
}