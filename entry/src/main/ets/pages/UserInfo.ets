//用户信息页面
import router from '@ohos.router';
import { navigationBar } from '../common/components/navigationBar'
import { ContactData , Gender } from '../model/data/ContactData'
interface RouterParams {
  contactData: ContactData;
}
@Entry
@Component
struct UserInfo {
  private contactData: ContactData = (router.getParams() as RouterParams).contactData;
  build() {
    Column(){
      navigationBar({title: '个人资料',isBack:true , isClose:false , isMenu: false , isMain: false , isMore:true , bgColor: $r('app.color.white')})
      Row(){
        Image($rawfile(this.contactData.headImg))
          .width(100).height(100)
          .borderRadius(100)
        Flex({direction: FlexDirection.Column , justifyContent: FlexAlign.Center , alignItems: ItemAlign.Start}){
          Row(){
            Text(this.contactData.name)
              .fontFamily($r('sys.float.ohos_id_text_size_sub_title1'))
              .fontColor($r('app.color.black'))
              .fontSize(22)
              .maxLines(1)
              .fontWeight(FontWeight.Bold)
          }
          Row(){
            Text($r('app.string.info_qqid'))
              .fontFamily($r('sys.float.ohos_id_text_size_body1'))
              .fontColor($r('app.color.grey3'))
              .fontSize(14)
              .maxLines(1)
            Text(this.contactData.qqid)
              .fontFamily($r('sys.float.ohos_id_text_size_body1'))
              .fontColor($r('app.color.grey3'))
              .fontSize(14)
              .maxLines(1)
          }.margin({top: 6})
          Row(){
            Text($r('app.string.info_area'))
              .fontFamily($r('sys.float.ohos_id_text_size_body1'))
              .fontColor($r('app.color.grey3'))
              .fontSize(14)
              .maxLines(1)
            Text(this.contactData.area)
              .fontFamily($r('sys.float.ohos_id_text_size_body1'))
              .fontColor($r('app.color.grey3'))
              .fontSize(14)
              .maxLines(1)
          }.margin({top: 4})
        }.height(160).layoutWeight(1)
        .padding(20)
        Image($r('app.media.dz0'))
          .width(30).height(30)
      }
      .width('100%').height(160)
      .padding({left: 20 , right: 20})
      .alignItems(VerticalAlign.Center)
      .backgroundColor($r('app.color.white'))
      Divider().color($r('app.color.grey2')).strokeWidth(0.8).margin({left:10 , right: 10})
      Column(){
        Image($r('app.media.info'))
          .width('100%')
      }
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Button($r('app.string.inf1') , { type: ButtonType.Normal })
          .width(150)
          .height(50)
          .backgroundColor($r("app.color.white"))
          .fontSize(16)
          .fontColor($r("app.color.black"))
          .borderRadius(10)
          .padding({ top: '0.00vp', right: '16.00vp', bottom: '0.00vp', left: '16.00vp' })
          .borderWidth('2.00vp')
          .borderColor('#7a000000')
        Button($r('app.string.inf2') , { type: ButtonType.Normal })
          .width(150)
          .height(50)
          .backgroundColor($r("app.color.white"))
          .fontSize(16)
          .fontColor($r("app.color.black"))
          .borderRadius(10)
          .padding({ top: '0.00vp', right: '16.00vp', bottom: '0.00vp', left: '16.00vp' })
          .borderWidth('2.00vp')
          .borderColor('#7a000000')
        Button($r('app.string.inf3'), { type: ButtonType.Normal })
          .width(150)
          .height(50)
          .fontSize(16)
          .fontColor($r("app.color.white"))
          .borderRadius(10)
          .backgroundImageSize({ width: '', height: '' })
          .backgroundColor('#ff009aff')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Message',
              params: { sessionData: this.contactData }  // 传递参数
            });
          });
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.grey2'))
  }
}