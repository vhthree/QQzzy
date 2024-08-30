//联系人TAB页
import { ContactData, Gender } from '../../../model/data/ContactData'
import { getContactDatas } from '../../../model/ContactModel'
import { ContactListItem } from '../listitem/ContactListItem'
import { navigationBar } from '../../components/navigationBar'
import { optionItem } from '../../utils/optionItem'
interface SystemItem {
  qqid: string;
  headImg: string;
  name: string;
  mark: string;
  gender: Gender;
  area: string;
}
@Component
export struct ContactTabContent {
  private value: string[] = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O']
  private contactItems: ContactData[] = getContactDatas() //获取联系人数据
  private scroller: Scroller = new Scroller()
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Start }) {
      navigationBar({
        title: '联系人',
        isBack: false,
        isClose: false,
        isMenu: true,
        isMain: true,
        isMore: false
      })
      Stack() {
        Column() {
          Column() {
            optionItem({
              context: $r('app.string.info_btn_nf'),
              isNext: true,
              marginTop: 0,
              usePic: 0
            })
            Divider()
              .width('100%')
              .color($r('app.color.grey2'))
              .strokeWidth(0.8)
            optionItem({
              context: $r('app.string.info_btn_qtz'),
              isNext: true,
              marginTop: 0,
              usePic: 0
            })
          }
          Tabs() {
            TabContent() {
              Stack() {

                Column() {
                  ForEach(this.contactItems, (item: ContactData) => {
                    ListItem() {
                      ContactListItem({ contactItem: item })

                    }
                  }, (item: ContactData) => item.qqid)
                }.height('100%')
                Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.End, alignItems: ItemAlign.Center }) {
                  AlphabetIndexer({ arrayValue: this.value, selected: 0 })
                    .selectedColor($r('app.color.white'))// 选中颜色

                    .selectedBackgroundColor($r('app.color.light_blue3'))// 选中背景颜色
                    .popupBackground($r('app.color.grey3'))// 弹出框背景颜色

                    .selectedFont({ size: 16 })// 选中的样式

                    .itemSize(26)// 每一项的大小正方形
                    .alignStyle(IndexerAlign.Right)// 左对齐
                    .padding({ right: 8 })

                }.width('100%')
              }
            }
            .tabBar('好友')
            TabContent() {
              Column() {
                optionItem({
                  context: $r('app.string.info_btn_cm'),
                  isDown: true,
                  marginTop: 0,
                  usePic: 0
                })
                Divider()
                  .width('100%')
                  .color($r('app.color.grey2'))
                  .strokeWidth(0.8)
                ForEach(this.contactItems, (item: ContactData) => {
                  ListItem() {
                    ContactListItem({ contactItem: item })
                  }
                }, (item: ContactData) => item.qqid)
              }.height('100%')
            }
            .tabBar('分组')
            TabContent() {
              Text('暂无群聊').fontSize(30)
            }
            .tabBar('群聊')
            TabContent() {
              Column() {
                ContactListItem({
                  contactItem: new ContactData(
                    "1",
                    "mypc.jpg",
                    "我的电脑",
                    "我的电脑",
                    Gender.male,
                    "电脑",
                    "无需数据线，手机轻松传文件到电脑")
                })
                ContactListItem({
                  contactItem: new ContactData(
                    "2",
                    "fnd.jpg",
                    "发现新设备",
                    "发现新设备",
                    Gender.male,
                    "新设备",
                    "搜索附近的设备，用QQ轻松连接设备")
                })
              }.height('100%')
            }
            .tabBar("设备")
          }.backgroundColor($r('app.color.white'))
          .width('100%').height('100%').margin({ top: 10 })
        }
        .width('100%').height('100%')
        .backgroundColor($r('app.color.grey2'))

      }
    }
  }
}