// 该组件为聊天页面
import { navigationBar } from '../common/components/navigationBar'
import { MessageData } from '../model/data/MessageData'
import { SessionData } from '../model/data/SessionData'
import { getMessagesDatas } from '../model/MessageModel'
import { MessageListItem } from '../common/components/listitem/MessageListItem'
import { messageBottom } from '../common/components/messageBottom'
import router from '@ohos.router';
interface RouterParams {
  sessionData: SessionData;
}
@Entry
@Component
struct Message {
  private msgsItems: MessageData[] = getMessagesDatas()
  private sessionData: SessionData = (router.getParams() as RouterParams).sessionData
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
      navigationBar({title: this.sessionData.name, isBack:true , isClose:false , isMenu: false , isMain: false , isMore:true})
      List(){
        ForEach(this.msgsItems, (item: MessageData) => {
          ListItem() {
            MessageListItem({ msgItem: item })
          }
        }, (item: MessageData) => item.mid)
      }.padding({top:10 , bottom: 10})
      .width('100%')
      messageBottom()
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.grey0'))
  }
}