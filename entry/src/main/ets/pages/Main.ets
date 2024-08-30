// 主界面
import { BottomTabs } from '../common/components/bottomTabs'
import { SessionTabContent } from '../common/components/tabcontent/SessionTabContent'
import { ContactTabContent } from '../common/components/tabcontent/ContactTabContent'
import { DiscoveryTabContent } from '../common/components/tabcontent/DiscoveryTabContent'
@Entry
@Component
struct Main {
  private controller: TabsController = new TabsController()
  @State title: Resource[] =
    [$r("app.string.title_qq"), $r('app.string.title_contact'), $r("app.string.title_moment")]
  @State bottomTabIndex: number = 0
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End, justifyContent: FlexAlign.End }) {
      Tabs({
        barPosition: BarPosition.End,
        index: this.bottomTabIndex,
        controller: this.controller
      }) {
        TabContent() {
          SessionTabContent()
        }
        TabContent() {
          ContactTabContent()
        }
        TabContent() {
          DiscoveryTabContent()
        }
      }
      .onChange((index: number) => {
        this.bottomTabIndex = index
      })
      .vertical(false)
      .barHeight(0)
      .width('100%')
      .scrollable(true)
      BottomTabs({ controller: this.controller, bottomTabIndex: this.bottomTabIndex })
    }
    .backgroundColor($r('app.color.white'))
    .width('100%').height('100%')
  }
}