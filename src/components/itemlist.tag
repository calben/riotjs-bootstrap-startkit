<itemlist>
  <div class="row">
    <div class="col-md-6">
      <h3>{ opts.title }</h3>

      <ul>
        <li each={ items } >{ this.name }</li>
      </ul>
    </div>

    <div class="col-md-6">
      <h3>{ opts.title }</h3>

      <ul>
        <li each={ items } >{ this.name }</li>
      </ul>
    </div>
    
  </div>

  <script>
    var self = this;
    self.items = [];

    self.on('mount', () => {
      console.log('itemlist mount')
      riot.control.on(riot.EVT.loadItemsSuccess,self.onLoadItemsSuccess);
      riot.control.trigger(riot.EVT.loadItems);
    });
    self.on('unmount', () => {
      console.log('itemlist unmount')
      riot.control.off(riot.EVT.loadItemsSuccess,self.onLoadItemsSuccess);
    });
    self.onLoadItemsSuccess = (items) =>{
      this.items = items;
      this.update()
    }

  
  </script>
</itemlist>