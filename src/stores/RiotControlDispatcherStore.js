class RiotControlDispatcherStore{

  constructor(){
    riot.observable(this);
    this.bindEvents();
  }

  bindEvents(){
    this.on('riot-dispatch', (event, data) => {
      console.log('riot-dispatch',event,data)
      this.trigger(event, data);
    });
  }
}
export default RiotControlDispatcherStore;