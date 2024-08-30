//设置页面
import { navigationBar } from '../common/components/navigationBar'
import { optionItem } from '../common/utils/optionItem'
@Entry
@Component
struct Setting {
  private scroller: Scroller = new Scroller()
  build() {
    Column(){
      navigationBar({title: $r('app.string.me_setting'), isBack:true, isClose:false, isMenu: false, isMain: false, isMore:false})
      Scroll(this.scroller) {
        Column() {
          optionItem({ img:$r('app.media.st1'),context: $r('app.string.set_1'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st2'),context: $r('app.string.set_2'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st3'),context: $r('app.string.set_3'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st4'),context: $r('app.string.set_4'), isNext: true, marginTop: 10 })
          optionItem({ img:$r('app.media.st5'),context: $r('app.string.set_5'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st6'),context: $r('app.string.set_6'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st7'),context: $r('app.string.set_7'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st8'),context: $r('app.string.set_8'), isNext: true, marginTop: 10 })
          optionItem({ img:$r('app.media.st9'),context: $r('app.string.set_9'), isNext: true, marginTop: 10 })
          optionItem({ img:$r('app.media.st10'),context: $r('app.string.set_10'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st11'),context: $r('app.string.set_11'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st12'),context: $r('app.string.set_12'), isNext: true, marginTop: 0 })
          optionItem({ img:$r('app.media.st13'),context: $r('app.string.set_13'), isNext: true, marginTop: 10 })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.Off)
    }
    .width('100%').height('100%')
    .backgroundColor($r('app.color.grey2'))
  }
}