<header>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">RiotJS Bootstrap StartKit</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
	    <li each={ navItems } 
          onclick={parent.route} 
          class={ active : parent.routeState.view === this.view }><a>{ this.title }</a></li>
	  </ul>
    </div><!--/.nav-collapse -->
  </div><!--/.container-fluid -->
</nav>

<script>
  var self = this;
  self.routeState = riot.routeState;

  self.navItems = [
    { title : 'Home', view : 'home'},
    { title : 'Projects', view : 'projects' }
  ];

  self.on('mount', () => {
    console.log('header mount');
    riot.control.on('header-update',self.onHeaderUpdate);
  });
  self.on('unmount', () => {
    console.log('header unmount')
    riot.control.off('header-update',self.onHeaderUpdate);
  });

  self.onHeaderUpdate = () =>{
    console.log('header header-update')
    self.update()
  }

  self.route = (evt) => {
    riot.route(evt.item.view)
  };

</script>

</header>
