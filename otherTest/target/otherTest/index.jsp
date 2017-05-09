<%@ page contentType="text/html;charset=UTF-8" %>
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<html>
<head>
	<title>测试页面</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		new Vue({
		  el: '#app',
		  data: {
		    message: 'Hello Vue.js的放松放松的!'
		  }
		})
	</script>
</head>
<body>
	<div id="app">
	  <p>{{ message }}</p>
	</div>
</body>
</html>