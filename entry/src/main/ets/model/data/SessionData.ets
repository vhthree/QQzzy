//消息列表的数据结构
export class SessionData{
  qqid: string         //用户qqid
  headImg: string     //头像
  name: string        //用户昵称
  lastMsg: string     //最后一条消息简要内容
  unReadMsg: number   //未读消息数量
  constructor(qqid: string , headImg: string , name: string , lastMsg: string , unReadMsg: number){
    this.qqid = qqid
    this.headImg = headImg
    this.name = name
    this.lastMsg = lastMsg
    this.unReadMsg = unReadMsg
  }
}