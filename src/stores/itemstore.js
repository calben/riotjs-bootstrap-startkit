class ItemStore{

  constructor(){
    riot.observable(this);
    this.items = [];

    this.bindEvents();
  }

  bindEvents(){
    this.on(riot.EVT.loadItems, () => {
      
      // fake async op 
      setTimeout(() => {
        this.items = [{ name : 'test a' },{ name : 'test b' } ,{ name : 'test c' }, { name : 'test d' }];
        this.trigger(riot.EVT.loadItemsSuccess, this.items);
      }, 200);

    });
  }

}
export default ItemStore;