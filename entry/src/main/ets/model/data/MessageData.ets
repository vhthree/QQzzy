//聊天记录结构
export enum msgIO {
  //发送
  Send ,
  //接收
  Recv
}
export enum msgType{
  //文本消息
  Text ,
  //图片消息
  Pic ,
  //语音消息
  Sound
}
export class MessageData{
  mid: string         //消息唯一id
  qqid: string         //用户qqid
  io: msgIO           //消息流动方向
  context: string     //消息内容
  type: msgType       //消息类型
  time: number        //时间戳
  avatar: string      //头像
  constructor(mid:string , qqid: string , io: msgIO , context: string , type: msgType, time: number, avatar: string){
    this.mid = mid
    this.qqid = qqid
    this.io = io
    this.context = context
    this.type = type
    this.time = time
    this.avatar = avatar
  }
}