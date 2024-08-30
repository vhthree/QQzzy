//动态TAB
import { optionItem } from '../../utils/optionItem'
import { navigationBar } from '../../components/navigationBar'
import router from '@ohos.router';
@Component
export struct DiscoveryTabContent {
  private scroller: Scroller = new Scroller()
  private momentItemOnClick(event: ClickEvent) {
    router.pushUrl({ url: 'pages/Moments'})
  }
  build(){
    Column(){
      navigationBar({
        title: '动态',
        isBack: false,
        isClose: false,
        isMenu: true,
        isMain: true,
        isMore: false
      })
      Scroll(this.scroller) {
        Column() {
          optionItem({
            img: $r('app.media.dt1'),
            context: $r('app.string.dt1'),
            isNext: true,
            marginTop: 0,
            itemOnClick: this.momentItemOnClick
          })
          optionItem({
            img: $r('app.media.dt2'),
            context: $r('app.string.dt2'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt3'),
            context: $r('app.string.dt3'),
            isNext: true,
            marginTop: 13
          })
          optionItem({
            img: $r('app.media.dt4'),
            context: $r('app.string.dt4'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt5'),
            context: $r('app.string.dt5'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt6'),
            context: $r('app.string.dt6'),
            isNext: true,
            marginTop: 13
          })
          optionItem({
            img: $r('app.media.dt7'),
            context: $r('app.string.dt7'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt8'),
            context: $r('app.string.dt8'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt9'),
            context: $r('app.string.dt9'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt10'),
            context: $r('app.string.dt10'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt11'),
            context: $r('app.string.dt11'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt12'),
            context: $r('app.string.dt12'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt13'),
            context: $r('app.string.dt13'),
            isNext: true,
            marginTop: 0
          })

          optionItem({
            img: $r('app.media.dt14'),
            context: $r('app.string.dt14'),
            isNext: true,
            marginTop: 0
          })

          optionItem({
            img: $r('app.media.dt15'),
            context: $r('app.string.dt15'),
            isNext: true,
            marginTop: 0
          })

          optionItem({
            img: $r('app.media.dt16'),
            context: $r('app.string.dt16'),
            isNext: true,
            marginTop: 0
          })

          optionItem({
            img: $r('app.media.dt17'),
            context: $r('app.string.dt17'),
            isNext: true,
            marginTop: 0
          })

          optionItem({
            img: $r('app.media.dt18'),
            context: $r('app.string.dt18'),
            isNext: true,
            marginTop: 0
          })
          optionItem({
            img: $r('app.media.dt19'),
            context: $r('app.string.dt19'),
            isNext: true,
            marginTop: 0
          })
        }
        .width('100%')
      }
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.Off)
    }
    .width('100%').height('100%')
    .backgroundColor($r('app.color.grey2'))
  }
}