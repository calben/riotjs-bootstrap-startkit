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
      <a class="navbar-brand" href="#">YouVirt</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
	    <li each={ navItems } onclick={parent.route} class={ active : parent.currentView === this.view }><a>{ this.title }</a></li>
	  </ul>
    </div><!--/.nav-collapse -->
  </div><!--/.container-fluid -->
</nav>

<script>

  this.currentView = riot.routeState.view;

  this.navItems = [
    { title : 'Home', view : 'home'},
    { title : 'Projects', view : 'projects' }
  ];

  this.route = (evt) => {
    riot.route(evt.item.view)
  };

</script>

</header>
