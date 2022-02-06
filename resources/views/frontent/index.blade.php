<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="csrf-token" content="{{ csrf_token() }}">

	<title>AJAX</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
		<span id="success"></span>
		<div class="row" >
			<div class="col-sm-12 justify-content-center"><a href="{{url('user-data')}}"><h3>user-date</h3></a></div>
			<form id="signupForm" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Name</label>
					<input type="text" name="name" id="name" class="form-control" aria-describedby="emailHelp" placeholder="Enter Name" >
					<span class="name_err"></span>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" name="email" id="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email" required="">
					<span id="erroremail"></span>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label>
					<input type="password" name="password" id="password" class="form-control" placeholder="Password" required="">
					<span id="erroremail"></span>

				</div>
				<span id="msg2" style="color: #fff;font-size: 13px;display:inline-block;margin-top: 4px;"></span>
				<div class="form-group form-check">
					
				</div>
				<button type="submit" id="submit" class="btn btn-primary btn-submit">Submit</button>
			</form>
		</div>	
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function () {
		$('#signupForm').on('submit', function(event){
			event.preventDefault();
			var email = $('#email').val();
			var name = $('#name').val();
			var password = $('#password').val();
			var id = $('#post_id').val();
			
			$.ajax({
				url: "{{url('/savevuser')}}",
				type: "POST",
				data: {
					id: id,
					email: email,
					name: name,
					password: password,
					_token: '{{csrf_token()}}',
				},
				success: function(response) {
					window.location.href = "{{url('user-data')}}";
					// $('#success').html(response.msg);
					// $("#email").val('');
					// $("#name").val('');
					// $("#password").val('');
				}
			});

		});
		});
	</script>

</body>
</html>