//消息列表的数据样例
import { SessionData } from './data/SessionData'
export function getSessionDatas(): Array<SessionData> {
  let sessionsDataArray: Array<SessionData> = []
  SessionsComposition.forEach((item: SessionItem) => {
    sessionsDataArray.push(new SessionData(item.qqid , item.headImg , item.name , item.lastMsg , item.unReadmsg))
  })

  return sessionsDataArray;
}
//消息列表列表数据测试样例
interface SessionItem {
  qqid: string;
  headImg: string;
  name: string;
  lastMsg: string;
  unReadmsg: number;
}
const SessionsComposition: SessionItem[] = [
  {
    qqid: "2830133296",
    headImg: "qq1.jpg",
    name: "非门控通道°",
    lastMsg: "[语音][在吗]",
    unReadmsg: 0
  },
  {
    qqid: "1685733707",
    headImg: "qq2.jpg",
    name: "欧几里得",
    lastMsg: "你好",
    unReadmsg: 0
  },
  {
    qqid: "1",
    headImg: "mypc.jpg",
    name: "我的电脑",
    lastMsg: "[文件]1120200325.pdf",
    unReadmsg: 0
  }
]