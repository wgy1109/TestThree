<%@ page contentType="text/html;charset=UTF-8"%>
<!-- <script src="https://unpkg.com/vue/dist/vue.js"></script> -->
<script src="/otherTest/static/vue.js"></script>
<html>
<head>
<title>测试页面</title>
<meta name="decorator" content="default" />
</head>
<body>

	<div id="app-1">
		文本插值（Mustache 语法：双大括号）
		<p>{{ message }}</p>
	</div>

	<div id="app-2">
		v-bind 指令 <span v-bind:title="message"> 鼠标悬停几秒钟查看此处动态绑定的提示信息！ </span>
		<span :title="message"> 鼠标悬停几秒钟查看此处动态绑定的提示信息！ </span>
	</div>

	<div id="app-3">
		v-if 条件
		<p v-if="seen">现在你看到我了</p>
	</div>

	<div id="app-4">
		v-for 循环
		<ol>
			<li v-for="todo in todos">{{ todo.text }}</li>
		</ol>
	</div>

	<div id="app-5">
		v-on 鼠标点击事件
		<p>{{ message }}</p>
		<button v-on:click="reverseMessage">逆转消息</button>
		<button @click="reverseMessage">逆转消息</button>
	</div>

	<div id="app-6">
		v-model 表单输入与应用状态的双向绑定
		<p>{{ message }}</p>
		<input v-model="message">
	</div>

	<div id="app-7">
		<ol>
			<!-- 现在我们为每个todo-item提供待办项对象    -->
			<!-- 待办项对象是变量，即其内容可以是动态的 -->
			<todo-item v-for="item in groceryList" v-bind:todo="item"></todo-item>
		</ol>
	</div>

	<div id="app-1-1">
		纯 HTML
		<div v-html="message"></div>
	</div>

	{{ number + 1 }} {{ ok ? 'YES' : 'NO' }} {{
	message.split('').reverse().join('') }}
	<div v-bind:id="'list-' + id"></div>

	<div id="example">{{ message.split('').reverse().join('') }}</div>

	----------------

	<div id="example1">
		<p>Original message: "{{ message }}"</p>
		<p>Computed reversed message: "{{ reversedMessage }}"</p>
	</div>

	<div id="watch-example">
		<p>
			Ask a yes/no question: <input v-model="question">
		</p>
		<p>{{ answer }}</p>
	</div>

	<div v-if="Math.random() > 0.5">Now you see me</div>
	<div v-else>Now you don't</div>

	<div v-if="type === 'A'">A</div>
	<div v-else-if="type === 'B'">B</div>
	<div v-else-if="type === 'C'">C</div>
	<div v-else>Not A/B/C</div>

	<template v-if="loginType === 'username'"> <label>Username</label>
	<input placeholder="Enter your username"> </template>
	<template v-else> <label>Email</label> <input
		placeholder="Enter your email address"> </template>

	<h1 v-show="ok">Hello!</h1>

	<ul id="example-2">
		<li v-for="(item, index) in items">{{ parentMessage }} - {{ index
			}} - {{ item.message }}</li>
	</ul>

	<div v-for="item of items"></div>

	<ul id="repeat-object" class="demo">
		<li v-for="value in object">{{ value }}</li>
	</ul>

	<!-- 	<div v-for="(value, key) in object">{{ key }} : {{ value }}</div>

	<div v-for="(value, key, index) in object">{{ index }}. {{ key }}
		: {{ value }}</div> -->

	<div>
		<span v-for="n in 10">{{ n }}</span>
	</div>

	<div id="todo-list-example">
		<input v-model="newTodoText" v-on:keyup.enter="addNewTodo"
			placeholder="Add a todo">
		<ul>
			<li is="todo-item" v-for="(todo, index) in todos" v-bind:title="todo"
				v-on:remove="todos.splice(index, 1)"></li>
		</ul>
	</div>

	<div id="example-1">
		<button v-on:click="counter += 1">增加 1</button>
		<p>这个按钮被点击了 {{ counter }} 次。</p>
	</div>

	<div id="example-2">
		<!-- `greet` 是在下面定义的方法名 -->
		<button v-on:click="greet">Greet</button>
	</div>

	<span>Multiline message is:</span>
	<p style="white-space: pre">{{ message }}</p>
	<br>
	<textarea v-model="message" placeholder="add multiple lines"></textarea>

	<input type="checkbox" id="checkbox" v-model="checked">
	<label for="checkbox">{{ checked }}</label>

	<input type="checkbox" id="jack" value="Jack" v-model="checkedNames">
	<label for="jack">Jack</label>
	<input type="checkbox" id="john" value="John" v-model="checkedNames">
	<label for="john">John</label>
	<input type="checkbox" id="mike" value="Mike" v-model="checkedNames">
	<label for="mike">Mike</label>
	<br>
	<span>Checked names: {{ checkedNames }}</span>










</body>
<script src="/otherTest/static/vueTest.js"></script>
<script src="https://unpkg.com/axios@0.12.0/dist/axios.min.js"></script>
<script src="https://unpkg.com/lodash@4.13.1/lodash.min.js"></script>
</html>