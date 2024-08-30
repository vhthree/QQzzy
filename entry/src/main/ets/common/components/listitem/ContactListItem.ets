//联系人TAB页面的item布局
import { ContactData, Gender } from '../../../model/data/ContactData'
import router from '@ohos.router';
@Component
export struct ContactListItem {
  private contactItem: ContactData = new ContactData(
    'default_qqid',
    'default_headImg',
    'default_name',
    'default_mark',
    Gender.male,
    'default_area',
    'default_signature'
  )
  @State itemBgColor: Resource = $r('app.color.white')
  build(){
    Row(){
      //头像
      Flex({ direction: FlexDirection.Row , justifyContent: FlexAlign.Center , alignItems:
      ItemAlign.Center}){
        Image($rawfile(this.contactItem.headImg))
          .width('100%')
          .height('100%')
          .borderRadius(100)
          .width('70%').height('70%')
      }.width(70).height(70)
      //昵称或备注
      Flex({ direction: FlexDirection.Column}){
          Text(this.contactItem.mark)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
            .fontFamily($r('sys.float.ohos_id_text_size_sub_title3'))
            .fontSize(20)
            .fontColor($r('app.color.black'))
            .margin({ top: 6 ,bottom: 5 })
        Text(this.contactItem.signature)
          .width('100%')
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .fontFamily($r('sys.float.ohos_id_text_size_body1'))
          .fontSize(16)
          .fontColor($r('app.color.grey3'))
          .margin({ top: 1 })
      }.height(70).layoutWeight(1).padding({left: 5})
    }
    .height(70)
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
      router.pushUrl({ url:'pages/UserInfo' ,
        params: { contactData: this.contactItem }})
    })
  }
}