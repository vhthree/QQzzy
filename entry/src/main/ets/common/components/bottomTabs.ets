//该组件为底部标签栏，用于主界面底部
class TabItem{
  imgSrcNomral: Resource
  imgSrcPress: Resource
  tabText: Resource
  constructor(imgSrcNomral: Resource, imgSrcPress: Resource , tabText: Resource) {
    this.imgSrcNomral = imgSrcNomral
    this.imgSrcPress = imgSrcPress
    this.tabText = tabText
  }
}
function getTabItems(): Array<TabItem> {
  let itemsArray: Array<TabItem> = []
  itemsArray.push(new TabItem($r('app.media.message_normal') , $r('app.media.message_press') ,$r('app.string.bottom_tab_message') ))
  itemsArray.push(new TabItem($r('app.media.contacts_normal') , $r('app.media.contacts_press') ,$r('app.string.bottom_tab_contact') ))
  itemsArray.push(new TabItem($r('app.media.discovery_normal') , $r('app.media.discovery_press') ,$r('app.string.bottom_tab_discovery') ))
  return itemsArray;
}
@Component
export struct BottomTabs {
  private tabSrc: number[] = [0, 1, 2]
  private controller: TabsController = new TabsController()
  @Link bottomTabIndex: number
  private tabItemArray: Array<TabItem> =  getTabItems()
  build() {
    Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceEvenly }) {
      ForEach(this.tabSrc, (item: number) => {
        Column() {
          Image((this.bottomTabIndex == item) ? this.tabItemArray[item].imgSrcPress : this.tabItemArray[item].imgSrcNomral)
            .objectFit(ImageFit.Contain)
            .width(30).height(30)
          Text(this.tabItemArray[item].tabText)
            .fontSize(14)
            .fontFamily($r('sys.float.ohos_id_text_size_body2'))
            .margin({ top: 3 })
        }
        .onClick(() => {
          this.controller.changeIndex(item)
        })
      }, (item: number) => item.toString())
    }
    .width('100%').height(74)
    .backgroundColor($r('app.color.white'))
  }
}