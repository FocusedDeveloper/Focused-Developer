<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Focused Developer</title>
	<link rel="stylesheet" href="assets/css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="assets/js/script.js"></script>

	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

</head>

<body>

	<!-- header -->
	<header id="header">
		<div class="borderone">
			<h1>The Focused Developer</h1>
			<small>by Charles Johnson - Software Developer</small>
		</div>
		<nav class="nav-main">
			<ul>

				<li><a href="index.html" class="nav-item">Home</a></li>
				<li><a href="about.html" class="nav-item">About</a></li>
				<li><a href="JavaScript:void(0)" onclick=changeVisible("drop-down1")
				 class="nav-item">Projects</a>
					<div id="drop-down1" class="nav-content">
						<div class="nav-sub">
							<ul>
								<li><a href=${pageContext.request.contextPath}/projects?page=c>C++</a></li>
								<li><a href="#">Java</a></li>
								<li><a href="#">Android</a></li>
							</ul>
						</div>
					</div>
				
				</li>
				<li><a href="contact.html" class="nav-item">Contact</a></li>
			</ul>
		</nav>
	</header>

	<!-- banner -->
	<div>
		<section id="banner"></section>
	</div>


	<!-- search bar -->
	<div>
		<section id="searchbar">
			<input type="text" placeholder="Search...">
		</section>
	</div>


	<!-- main content -->
	<div id="wrapper">
		<section id="primary" class="borderone">
			<h2>Project Spotlight</h2>
			<p> <img src="https://picsum.photos/800/500"/> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>

			<p>Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a,</p>
		</section>
		<section id="secondary" class="borderone">
			<h2>Recent Updates</h2>
			<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>

			<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

			<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>

			<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas</p>
		</section>
		<footer class="borderone"> &copy; The Focused Developer</footer>
	</div>
	<script>
	changeVisible("drop-down1");
	</script>
</body>

</html>