<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grammar XML</title>
<section>
  <span>Sticky Header!</span>
</section>
<header>
  <h1>Site Name</h1>
  <nav>
    <a href=#>About</a>
    <a href=#>Services</a>
    <a href=#>Contact</a>
  </nav>
</header>
<link rel="icon" href="favicons/favicon-bmw-16x16.png">
<link rel="stylesheet" href="index.css">
</head>
<body>

	<h3>Create your own Grxml</h3>
	
	<div>
		<form action="#">
			<div class="tab">XML Configuration
				<label for="xmlVersion">XML Version:</label>
				<input type="text" id="xmlVersion" name="xmlVersion" class="" placeholder="1.0">
				<label for="xmlEncoding">XML Encoding:</label>
				<input type="text" id="xmlEncoding" name="xmlEncoding" class="" placeholder="ISO-8859-1">
			</div>
			
			<div class="tab">Grammar Properties
				<label for="gramVersion">Grammar Version:</label>
				<input type="text" id="gramVersion" name="gramVersion" class="" placeholder="1.0">
				<label for="xmlLang">XML Language:</label>
				<input type="text" id="xmlLang" name="xmlLang" class="" placeholder="en-US">
				<label for="tagFormatList">Tag-Format:</label>
				<select name="tagFormatList" id="tagFormatList" onchange="configureScripts(this,'tagFormat')">
						<option value="">Please Select</option>
						<option value="swi1">swi-semantics/1.0</option>
				</select>
			</div>
			
			<div class="tab">Semantic Rules
				<label for="allowScript">Allow Script:</label>
				<input type="checkbox" id="allowScript" name="allowScript" class="">
				<div>
					<label>
					    <input type="radio" name="allow" value="allow" onclick=""/>allow
					</label>
					<label>
					    <input type="radio" name="disallow" value="disallow" checked="checked"/>disallow
					</label>
				</div>
			</div>
			
			<div>
				<button type="button" onclick="alert('Add Option')">Add New Option &#x2728;</button>
				<button type="button" onclick="alert('remove Option')">Delete Option &#x274C;</button>
			</div>
			
			<div class="tab">Options
				<div class="tab-1">
					<label for="meaning">SWI_meaning:</label>
					<input type="text" id="meaning" name="meaning" class="" placeholder="Return value (dm_root)">
					<label for="confModeList">dm_confirmation_mode:</label>
					<select name="confModeList" id="confModeList">
							<option value="">Please Select</option>
							<option value="swi1">IF_NECESSARY</option>
							<option value="swi1">ALWAYS</option>
							<option value="swi1">NEVER</option>
					</select>
					<label for="dm_confirm_string">dm_confirm_string:</label>
					<input type="text" id="dm_confirm_string" name="dm_confirm_string" class="">
				</div>
				
				<div class="tab-1.5">
					<label for="dtmf">Dtmf:</label>
					<input type="checkbox" id="dtmf" name="dtmf" class="">
					<label for="dtmfValue">value:</label>
					<input type="number" id="dtmfValue" name="dtmfValue" class="">
				</div>
				
				
				<div class="tab-2">
					<div class="tab-2-1">
						<input type="text" placeholder="Eg: go to mainmenu">
						<button type="button" id="addButton" class="s-buttons" onclick="alert('add')">&#x2714;</button>	
						<button type="button" id="deleteButton" class="s-buttons" onclick="alert('delete')">&#x2718;</button>
						<button type="button" id="editButton" class="s-buttons" onclick="alert('edit')">&#x270E;</button>
					</div>
				</div>
				
				<div class="tab-3">
					<div class="tab-3-1">
						<input type="text" placeholder="Eg: (goto | switch to) mainmenu [please]">
						<button type="button" id="addButton" class="s-buttons" onclick="alert('add')">&#x2714;</button>	
						<button type="button" id="deleteButton" class="s-buttons" onclick="alert('delete')">&#x2718;</button>
						<button type="button" id="editButton" class="s-buttons" onclick="alert('edit')">&#x270E;</button>
						<button type="button" id="rulesButton" class="s-buttons" onclick="alert('rules')">...</button>
					</div>
				</div>
			
			</div>
			
			
			<div class="submit">
				<button type="button" id="download">Download &#x26DB;</button>
			</div>
			
		
		</form>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="index.js"></script>
</body>
</html>