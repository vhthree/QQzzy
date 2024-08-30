// 聊天页数据
import { msgIO , msgType , MessageData } from './data/MessageData'
export function getMessagesDatas(): Array<MessageData> {
  let msgsDataArray: Array<MessageData> = []
  MessagesComposition.forEach((item: MessageItem) => {
    msgsDataArray.push(new MessageData(item.mid , item.qqid , item.io , item.context , item.type , item.time, item.avatar))
  })
  return msgsDataArray;
}
interface MessageItem {
  mid: string;
  qqid: string;
  io: msgIO;
  context: string;
  type: msgType;
  time: number;
  avatar: string;
}
const MessagesComposition: MessageItem[] = [
  {
    mid: "1",
    qqid: "1627018151",
    io: msgIO.Send,
    context: "轻轻的我走了，\n" +
      "正如我轻轻的来；\n" +
      "我轻轻的招手，\n" +
      "作别西天的云彩。",
    type: msgType.Text,
    time: 1,
    avatar: "qq0.jpg"
  },
  {
    mid: "2",
    qqid: "2830133296",
    io: msgIO.Recv,
    context: "那河畔的金柳，\n" +
      "是夕阳中的新娘；\n" +
      "波光里的艳影，\n" +
      "在我的心头荡漾。",
    type: msgType.Text,
    time: 2,
    avatar: "qq1.jpg"
  },
  {
    mid: "3",
    qqid: "1627018151",
    io: msgIO.Send,
    context: "p1.jpg",
    type: msgType.Pic,
    time: 3,
    avatar: "qq0.jpg"
  },
  {
    mid: "4",
    qqid: "2830133296",
    io: msgIO.Recv,
    context: "p2.jpg",
    type: msgType.Pic,
    time: 4,
    avatar: "qq1.jpg"
  },
  {
    mid: "5",
    qqid: "1627018151",
    io: msgIO.Send,
    context: "sample_sound.mp3",
    type: msgType.Sound,
    time: 5,
    avatar: "qq0.jpg"
  },
  {
    mid: "6",
    qqid: "2830133296",
    io: msgIO.Recv,
    context: "sample_sound.mp3",
    type: msgType.Sound,
    time: 6,
    avatar: "qq1.jpg"
  }
]