class Category < ActiveHash::Base
  self.data = [
      {id: 1, name: '服'}, {id: 2, name: '家具'}, {id: 3, name: '家電'},
      {id: 4, name: 'おもちゃ'}
  ]
end