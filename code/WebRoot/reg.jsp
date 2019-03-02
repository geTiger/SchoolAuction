<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<title>注册</title>

<link href="css/normalize.css" rel="stylesheet" />
<link href="css/jquery-ui.css" rel="stylesheet" />
<link href="css/jquery.idealforms.min.css" rel="stylesheet"
	media="screen" />

<style type="text/css">
body {
	font: normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;
	color: #222;
	background: url(pattern.png);
	overflow-y: scroll;
	padding: 60px 0 0 0;
}

#my-form {
	width: 755px;
	margin: 0 auto;
	border: 1px solid #ccc;
	padding: 3em;
	border-radius: 3px;
	box-shadow: 0 0 2px rgba(0, 0, 0, .2);
}

#comments {
	width: 350px;
	height: 100px;
}
</style>

</head>
<body>


	<div class="row">

		<div class="eightcol last">

			<!-- Begin Form -->

			<form id="my-form"
				action="${pageContext.request.contextPath }/userReg.action"
				method="post">

				<section name="个人信息">
					<div>
						<label>用户名:</label><input id="username" name="user.username"
							type="text" />
					</div>
					<div>
						<label>真实姓名:</label><input id="realname" name="user.realname"
							type="text" />
					</div>
					<div>
						<label>密码:</label><input id="pass" name="user.password"
							type="password" />
					</div>
					<div>
						<label>邮箱:</label><input id="email" name="user.useremail"
							data-ideal="required email" type="email" />
					</div>
					
					<div>
						<label>出生日期:</label><input name="user.birthdate"
							class="datepicker" data-ideal="date" type="text"
							placeholder="月/日/年" />
					</div>

					
						<div>
							<label>性别:</label> <select id="states" name="user.sex">
								<option value="default">&ndash; 选择性别 &ndash;</option>
								<option value="男">男</option>
								<option value="女">女</option>

							</select>
						</div>

					
					<!--  <div><label>上传头像:</label><input id="file" name="user.file" multiple type="file"/></div>-->
					<div>
						<label>个人QQ:</label><input name="user.qqnumber" type="text" />
					</div>
				</section>

				<section name="个人爱好">
					<div id="languages">
						<label>个人爱好:</label> <label><input type="checkbox"
							name="hobby" value="digital" />科技数码</label> <label><input
							type="checkbox" name="hobby" value="bodybuding" />运动健身</label> <label><input
							type="checkbox" name="hobby" value="book" />书籍</label> <label><input
							type="checkbox" name="hobby" value="dress" />服饰</label> <label><input
							type="checkbox" name="hobby" value="food" />吃货</label>
					</div>

				</section>

				<section name="地址信息">
					<div>
						<label>联系电话:</label><input type="tel" name="user.phone" />
					</div>
					<div>
						<label>宿舍楼号:</label> <select id="states"
							name="user.apartmentnumber">
							<option value="default">&ndash; 选择楼号 &ndash;</option>
							<option value="学1">学1</option>
							<option value="学2">学2</option>
							<option value="学3">学3</option>
							<option value="学4">学4</option>
							<option value="学5">学5</option>
							<option value="学6">学6</option>
							<option value="学7">学7</option>
							<option value="学8">学8</option>
							<option value="学9">学9</option>
							<option value="学10">学10</option>
							<option value="学11">学11</option>
							<option value="学12">学12</option>
							<option value="学13">学13</option>
							<option value="学14">学14</option>
							<option value="学15">学15</option>
							<option value="学16">学16</option>
							<option value="学17">学17</option>
							<option value="学18">学18</option>
							<option value="学19">学19</option>
							<option value="学20">学10</option>
							<option value="学21">学21</option>
							<option value="学22">学22</option>
							<option value="学23">学23</option>
							<option value="学24">学24</option>
							<option value="学25">学25</option>
							<option value="学26">学26</option>
							<option value="学27">学27</option>
							<option value="学28">学28</option>
							<option value="学29">学29</option>
							<option value="学30">学30</option>
							<option value="学1">学31</option>
							<option value="学2">学32</option>
							<option value="学3">学33</option>
							<option value="学4">学34</option>
							<option value="学5">学35</option>
						</select>
					</div>
					<div>
						<label>宿舍号:</label><input type="text" name="user.dormnumber" />
					</div>
					<div>
						<label>备注:</label>
						<textarea id="comments" name="user.comments"></textarea>
					</div>
				</section>

				<div>
					<hr />
				</div>

				<div>
					<button type="submit">提交</button>
					<button id="reset" type="button">重置</button>
					<button type="button" class="btn"
						onclick=" javascript:window.location.href='login.jsp'">返回登录</button>
				</div>

			</form>

			<!-- End Form -->

		</div>

	</div>


	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.idealforms.js"></script>
	<script type="text/javascript">
		var options = {

			onFail : function() {
				alert($myform.getInvalid().length + ' invalid fields.')
			},

			inputs : {
				'password' : {
					filters : 'required pass',
				},
				'username' : {
					filters : 'required username',
					data : {
					//ajax: { url:'validate.php' }
					}
				},
				'file' : {
					filters : 'extension',
					data : {
						extension : [ 'jpg' ]
					}
				},
				'comments' : {
					filters : 'min max',
					data : {
						min : 50,
						max : 200
					}
				},
				'states' : {
					filters : 'exclude',
					data : {
						exclude : [ 'default' ]
					},
					errors : {
						exclude : '选择楼号.'
					}
				},
				'langs[]' : {
					filters : 'min max',
					data : {
						min : 2,
						max : 3
					},
					errors : {
						min : 'Check at least <strong>2</strong> options.',
						max : 'No more than <strong>3</strong> options allowed.'
					}
				}
			}

		};

		var $myform = $('#my-form').idealforms(options).data('idealforms');

		$('#reset').click(function() {
			$myform.reset().fresh().focusFirst()
		});

		$myform.focusFirst();
	</script>

</body>
</html>