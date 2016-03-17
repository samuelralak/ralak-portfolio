jQuery -> 
	uniqueId = $("input#project_unique_token[type='hidden']").val()
	$("div#dropzone").dropzone 
		url: "/project_images"
		headers: { "Unique-Token": uniqueId } 
		paramName: 'project_image[screenshot]'