//该组件为设置和各功能选项的布局
@Component
export struct optionItem {
  @State bgColor: Resource = $r("app.color.white")
  private img: Resource = $r('app.media.default')  //图标资源
  private context: Resource = $r('app.string.default')  //文字资源
  private isNext: boolean = false //是否有下一步的导航箭头
  private marginTop: number = 0 //组件上边距
  private itemOnClick = (event: ClickEvent) =>{}  //item的单击事件（可选）
  private usePic: number = 1   //是否使用图片
  private isDown: boolean = false   //是否有下一步的导航箭头
  build(){
    Row(){
      if(this.usePic == 1){
        Flex({direction: FlexDirection.Row , alignItems:ItemAlign.Center , justifyContent:FlexAlign.Center}){
          Image(this.img)
            .width(30).height(30)
        }.width(50).height(60)
      }
      Column(){
        Row(){
          Text(this.context)
            .fontFamily($r('sys.float.ohos_id_text_size_body1'))
            .fontSize(19)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
            .layoutWeight(1)
          if(this.isNext == true){
            Image($r('app.media.ic_next'))
              .width(18)
              .height(18)
              .margin(10)
          }
          if(this.isDown == true){
            Image($r('app.media.ic_down'))
              .width(18)
              .height(18)
              .margin(10)
          }
        }.height(59)
      }
      .padding({left: 10 , right:4})
      .height(60)
      .layoutWeight(1)
    }.width('100%').height(60)
    .margin({top: this.marginTop})
    .backgroundColor(this.bgColor)
    .onTouch((event: TouchEvent) => {
      if (event.type === TouchType.Down) {
        this.bgColor = $r('app.color.grey2')
      }
      if (event.type === TouchType.Up) {
        this.bgColor = $r('app.color.white')
      }
    })
    .onClick((event: ClickEvent) => {
      this.itemOnClick(event)
    })
  }
}