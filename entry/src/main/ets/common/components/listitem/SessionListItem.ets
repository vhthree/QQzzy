// 该组件为消息TAB的item布局
import { SessionData } from '../../../model/data/SessionData'
import router from '@ohos.router';
@Component
export struct SessionListItem{
  private sessionItem: SessionData = new SessionData(
    'default_qqid',
    'default_headImg',
    'default_name',
    'default_lastMsg',
    0
  )
  @State itemBgColor: Resource = $r('app.color.white')
  build(){
    Row(){
      //头像
      Flex({ direction: FlexDirection.Row , justifyContent: FlexAlign.Center , alignItems:
      ItemAlign.Center}){
        Image($rawfile(this.sessionItem.headImg))
          .width('100%')
          .height('100%')
          .borderRadius('100.00vp')
          .width('70%').height('70%')
      }.width(78).height(78)
      //昵称
      Column(){
        Flex({ direction: FlexDirection.Column , justifyContent: FlexAlign.Center}){
          Text(this.sessionItem.name)
            .width('100%')
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
            .fontFamily($r('sys.float.ohos_id_text_size_sub_title3'))
            .fontSize(20)
            .fontColor($r('app.color.black'))
            .margin({ bottom: 1 })
          Text(this.sessionItem.lastMsg)
            .width('100%')
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
            .fontFamily($r('sys.float.ohos_id_text_size_body1'))
            .fontSize(16)
            .fontColor($r('app.color.grey3'))
            .margin({ top: 1 })
        }.width('100%').height(77)
        Divider()
          .width('100%')
          .color($r('app.color.grey2'))
          .strokeWidth(0.8)
      }.height(78).layoutWeight(1)
    }
    .height(78)
    .width('100%')
    .backgroundColor(this.itemBgColor)
    .onTouch((event: TouchEvent) => {
      if (event.type === TouchType.Down) {
        this.itemBgColor = $r('app.color.grey2')
      }
      if (event.type === TouchType.Up) {
        this.itemBgColor = $r('app.color.white')
      }
    })
    .onClick(() => {
      router.pushUrl({ url: 'pages/Message' ,
        params: { sessionData: this.sessionItem }})
    })
  }
}