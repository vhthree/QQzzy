//联系人TAB的联系人数据
import { ContactData , Gender } from './data/ContactData'
interface ContactItem {
  qqid: string;
  headImg: string;
  name: string;
  mark: string;
  gender: Gender;
  area: string;
  signature: string;
}
export function getContactDatas(): Array<ContactData> {
  let contactDataArray: Array<ContactData> = []
  ContactsComposition.forEach((item: ContactItem) => {
    contactDataArray.push(new ContactData(item.qqid , item.headImg , item.name , item.mark , item.gender , item.area, item.signature))
  })
  return contactDataArray;
}
const ContactsComposition: ContactItem[] = [
  {
    qqid: "2830133296" ,
    headImg: "qq1.jpg" ,
    name: "非门控通道°" ,
    mark: "非门控通道°",
    gender: Gender.male ,
    area: "河北·保定",
    signature: "[在线]要好好活，要做有意义的事。"
  },
  {
    qqid: "1685733707" ,
    headImg: "qq2.jpg" ,
    name: "欧几里得" ,
    mark: "欧几里得",
    gender: Gender.male ,
    area: "湖北·武汉",
    signature: "[在线]作业快做完"
  },
  {
    qqid: "1627018151" ,
    headImg: "qq0.jpg" ,
    name: "张泽渊" ,
    mark: "起源",
    gender: Gender.male ,
    area: "北京·海淀",
    signature: "[在线]学号1120200325"
  }
  ]