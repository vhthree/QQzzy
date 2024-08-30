//聊天页底部输入栏布局
@Component
export struct messageBottom {
  build() {
    Column(){
      Row() {
        TextInput()
          .type(InputType.Normal)
          .enterKeyType(EnterKeyType.Send)
          .caretColor($r('app.color.green0'))
          .borderRadius(5)
          .fontSize(16)
          .fontFamily($r('sys.float.ohos_id_text_size_body1'))
          .backgroundColor($r('app.color.white'))
          .width('70%')
          .height(40)
        Button($r('app.string.fs'), { type: ButtonType.Normal })
          .backgroundColor($r("app.color.light_blue2"))
          .fontSize(20)
          .fontColor($r("app.color.white"))
          .borderRadius(5)
          .margin({left: 10})
      }
      Image($r('app.media.bt1'))
        .width('100%')
    }
    .width('100%')
    .height(80)
  }
}