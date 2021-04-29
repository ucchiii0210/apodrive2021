class Driver < ActiveHash::Base
  self.data = [
    { id: 0, name: '未定' },
    { id: 1, name: '法人' },
    { id: 2, name: '但馬' },
    { id: 3, name: '鈴木' },
    { id: 4, name: '菊池' },
    { id: 5, name: '大竹' },
    { id: 6, name: '加藤' },
    { id: 7, name: '尾田' },
    { id: 8, name: '梅田' },
    { id: 9, name: '本田' },

  ]
  include ActiveHash::Associations
  has_many :orders
end