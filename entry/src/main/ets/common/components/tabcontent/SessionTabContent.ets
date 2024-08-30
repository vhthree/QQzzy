//消息TAB页
import { SessionData } from '../../../model/data/SessionData'
import { getSessionDatas } from '../../../model/SessionModel'
import { SessionListItem } from '../../components/listitem/SessionListItem'
import { navigationBar } from '../../components/navigationBar'
@Component
export struct SessionTabContent {
  private sessionItem: SessionData[] = getSessionDatas()

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Start }) {
      navigationBar({
        title: '消息',
        isBack: false,
        isClose: false,
        isMenu: true,
        isMain: true,
        isMore: false
      })
      Column() {
        List() {
          ForEach(this.sessionItem, (item: SessionData) => {
            ListItem() {
              SessionListItem({ sessionItem: item })
            }
          }, (item: SessionData) => item.qqid)
        }
      }
      .width('100%').height('100%')
      .backgroundColor($r('app.color.white'))
    }
  }
}