
import './components/header.tag';
 
<app>
<header></header>
<div class="container">
	<div id="riot-app"></div>
</div>


<script>
 	var self = this;

 	self.on('mount', () => {
      console.log('app mount');
      riot.control.on(riot.EVT.finalMount,self.onFinalMount);
    });
    self.on('unmount', () => {
      console.log('app unmount')
      riot.control.off(riot.EVT.finalMount,self.onFinalMount);
    });

    self.onFinalMount = (data) =>{
      console.log('app '+ riot.EVT.finalMount + ' ' + data)
    }

</script>
</app>