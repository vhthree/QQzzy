//联系人TAB的联系人数据结构
export enum Gender{
  //女性
  female ,
  //男性
  male
}
export class ContactData{
  qqid: string         //用户wid
  headImg: string     //头像
  name: string        //用户昵称
  mark: string        //备注名
  gender: Gender      //性别
  area: string        //地区
  signature: string   //个性签名
  constructor(qqid: string , headImg: string , name: string , mark: string , gender: Gender, area: string, signature: string){
    this.qqid = qqid
    this.headImg = headImg
    this.name = name
    this.mark = mark
    this.gender = gender
    this.area = area
    this.signature = signature
  }
}