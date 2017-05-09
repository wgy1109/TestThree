//--------------------------起步 begin
var app1 = new Vue({
	el : '#app-1',
	data : {
		message : 'Hello Vue.js的放松放松的!'
	}
})

var app2 = new Vue({
	el : '#app-2',
	data : {
		message : '页面加载于 ' + new Date()
	}
})

var app3 = new Vue({
	el : '#app-3',
	data : {
		seen : true
	}
})

var app4 = new Vue({
	el : '#app-4',
	data : {
		todos : [ {
			text : '学习 JavaScript'
		}, {
			text : '学习 Vue'
		}, {
			text : '整个牛项目'
		} ]
	}
})

var app5 = new Vue({
	el : '#app-5',
	data : {
		message : 'Hello Vue.js!'
	},
	methods : {
		reverseMessage : function() {
			this.message = this.message.split('').reverse().join('')
		}
	}
})

var app6 = new Vue({
	el : '#app-6',
	data : {
		message : 'Hello Vue!'
	}
})

Vue.component('todo-item', {
	props : [ 'todo' ],
	template : '<li>{{ todo.text }}</li>'
})
var app7 = new Vue({
	el : '#app-7',
	data : {
		groceryList : [ {
			text : '蔬菜'
		}, {
			text : '奶酪'
		}, {
			text : '随便其他什么人吃的东西'
		} ]
	}
})

// --------------------------起步 end
// --------------------------实例 begin

var vm1 = new Vue({
	data : {
		a : 1
	},
	created : function() {
		// `this` 指向 vm 实例
		console.log('created Test  --  a is: ' + this.a)
	}
})

// --------------------------实例 end
// --------------------------计算属性 begin

var vm = new Vue({
	el : '#example1',
	data : {
		message : 'Hello'
	},
	computed : {
		// a computed getter
		reversedMessage : function() {
			// `this` points to the vm instance
			return this.message.split('').reverse().join('')
		}
	}
})
/*
 * var watchExampleVM = new Vue({ el: '#watch-example', data: { question: '',
 * answer: 'I cannot give you an answer until you ask a question!' }, watch: { //
 * 如果 question 发生改变，这个函数就会运行 question: function (newQuestion) { this.answer =
 * 'Waiting for you to stop typing...' this.getAnswer() } }, methods: { //
 * _.debounce 是一个通过 lodash 限制操作频率的函数。 // 在这个例子中，我们希望限制访问yesno.wtf/api的频率 //
 * ajax请求直到用户输入完毕才会发出 // 学习更多关于 _.debounce function (and its cousin //
 * _.throttle), 参考: https://lodash.com/docs#debounce getAnswer: _.debounce(
 * function () { var vm = this if (this.question.indexOf('?') === -1) {
 * vm.answer = 'Questions usually contain a question mark. ;-)' return }
 * vm.answer = 'Thinking...' axios.get('https://yesno.wtf/api') .then(function
 * (response) { vm.answer = _.capitalize(response.data.answer) })
 * .catch(function (error) { vm.answer = 'Error! Could not reach the API. ' +
 * error }) }, // 这是我们为用户停止输入等待的毫秒数 500 ) } })
 */

var example2 = new Vue({
	el : '#example-2',
	data : {
		parentMessage : 'Parent',
		items : [ {
			message : 'Foo'
		}, {
			message : 'Bar'
		} ]
	}
})

new Vue({
	el : '#repeat-object',
	data : {
		object : {
			FirstName : 'John',
			LastName : 'Doe',
			Age : 30
		}
	}
})

Vue
		.component(
				'todo-item',
				{
					template : '\
	    <li>\
	      {{ title }}\
	      <button v-on:click="$emit(\'remove\')">X</button>\
	    </li>\
	  ',
					props : [ 'title' ]
				})
new Vue({
	el : '#todo-list-example',
	data : {
		newTodoText : '',
		todos : [ 'Do the dishes', 'Take out the trash', 'Mow the lawn' ]
	},
	methods : {
		addNewTodo : function() {
			this.todos.push(this.newTodoText)
			this.newTodoText = ''
		}
	}
})

var example1 = new Vue({
	el : '#example-1',
	data : {
		counter : 0
	}
})

var example2 = new Vue({
	el : '#example-2',
	data : {
		name : 'Vue.js'
	},
	// 在 `methods` 对象中定义方法
	methods : {
		greet : function(event) {
			// `this` 在方法里指当前 Vue 实例
			alert('Hello ' + this.name + '!')
			// `event` 是原生 DOM 事件
			alert(event.target.tagName)
		}
	}
})
// 也可以用 JavaScript 直接调用方法
example2.greet() // -> 'Hello Vue.js!'

new Vue({
	el : '...',
	data : {
		checkedNames : []
	}
})
