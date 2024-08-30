// 聊天聊天记录List的item布局
import { msgIO , msgType , MessageData } from '../../../model/data/MessageData'
import router from '@ohos.router';
interface ImageSize {
  width: number;
  height: number;
}
@Component
export struct MessageListItem{
  private msgItem: MessageData = new MessageData(
    'default_mid',
    'default_qqid',
    msgIO.Send,
    'default_context',
    msgType.Text,
    Date.now(),
    'default_avatar'
  )
  @State imgHeight: number = 0
  @State imgWidth: number = 0
  @Builder header_layout() {
    Flex({ direction: FlexDirection.Row , justifyContent: FlexAlign.Center , alignItems:
    ItemAlign.Center}){
      Image($rawfile(this.msgItem.avatar))
        .borderRadius(100)
        .width(50).height(50)
    }.height(60).width(60).onClick(() => {
      router.pushUrl({
        url: 'pages/UserInfo',
        params: {
          contactData: {
            qqid: this.msgItem.qqid,
            headImg: this.msgItem.avatar,
            name: '非门控通道°',
            mark: '非门控通道°',
            area:'河北·保定'
          }
        }
      });
    });
  }
//发送消息布局
  @Builder sendMsgLayout(){
    Flex({ direction: FlexDirection.RowReverse , justifyContent: FlexAlign.End}){
      //头像
      this.header_layout()
      //消息内容
      Flex({ direction: FlexDirection.Row , justifyContent:FlexAlign.End , alignItems:ItemAlign.Center}){
        if(this.msgItem.type == msgType.Text){        //文本消息
          Text(this.msgItem.context)
            .backgroundColor($r('app.color.light_blue3'))
            .borderRadius(4)
            .padding(8)
            .fontFamily($r('sys.float.ohos_id_text_size_body1'))
            .fontSize(22)
            .fontColor($r('app.color.white'))
          Image($r('app.media.right_arrow'))
            .height(12)
            .width(6)
        }else if(this.msgItem.type == msgType.Pic){   //图片消息
          //Flex(){
          Image($rawfile(this.msgItem.context))
            .objectFit(ImageFit.Contain)
            .borderRadius(4)
            .sourceSize({width:this.imgWidth , height: this.imgHeight })
            .onComplete((msg: ImageSize) => {
              this.imgWidth = msg.width
              this.imgHeight = msg.height
            })
          Image($r('app.media.right_arrow'))
            .height(12)
            .width(6)
        }else if(this.msgItem.type == msgType.Sound){ //语音消息
          Flex({direction: FlexDirection.RowReverse , alignItems: ItemAlign.Center}){
            Image($r('app.media.ic_sound_left'))
              .height(20)
              .width(20)
              .margin({right: 5})
            Text('4\'\'')
              .fontFamily($r('sys.float.ohos_id_text_size_body1'))
              .fontSize(16)
              .margin({right: 5})
          }.height(46).width(80).padding(6).backgroundColor($r('app.color.light_blue3')).margin({top: 6})
          Image($r('app.media.right_arrow'))
            .height(12)
            .width(6)
        }
      }.layoutWeight(1)
      Blank().width(78)
    }.width('100%').margin({bottom: 20})
  }
//接收消息布局
  @Builder recvMsgLayout(){
    Flex({ direction: FlexDirection.Row , justifyContent: FlexAlign.Start}){
      //头像
      this.header_layout()
      //消息内容
      Flex({ direction: FlexDirection.RowReverse , justifyContent:FlexAlign.End , alignItems:ItemAlign.Center}){
        if(this.msgItem.type == msgType.Text){        //文本消息
          Text(this.msgItem.context)
            .backgroundColor($r('app.color.white'))
            .borderRadius(4)
            .padding(8)
            .fontFamily($r('sys.float.ohos_id_text_size_body1'))
            .fontSize(22)
          Image($r('app.media.left_arrow'))
            .height(12)
            .width(6)
        }else if(this.msgItem.type == msgType.Pic){   //图片消息
          //Flex(){
          Image($rawfile(this.msgItem.context))
            .objectFit(ImageFit.Contain)
            .borderRadius(4)
            .sourceSize({width:this.imgWidth , height: this.imgHeight })
            .onComplete((msg: ImageSize) => {
              this.imgWidth = msg.width
              this.imgHeight = msg.height
            })
          Image($r('app.media.left_arrow'))
            .height(12)
            .width(6)
        }else if(this.msgItem.type == msgType.Sound){ //语音消息
          Flex({direction: FlexDirection.Row , alignItems: ItemAlign.Center}){
            Image($r('app.media.ic_sound_right'))
              .height(20)
              .width(20)
              .margin({left: 5})
            Text('4\'\'')
              .fontFamily($r('sys.float.ohos_id_text_size_body1'))
              .fontSize(16)
              .margin({left: 5})
          }.height(46).width(80).padding(6).backgroundColor($r('app.color.white')).margin({top: 6})
          Image($r('app.media.left_arrow'))
            .height(12)
            .width(6)
        }
      }.layoutWeight(1)
      Blank().width(78)
    }.width('100%').margin({bottom: 20})
  }
  build(){
    if(this.msgItem.io == msgIO.Send){
      this.sendMsgLayout()
    }else if(this.msgItem.io == msgIO.Recv){
      this.recvMsgLayout()
    }
  }
}