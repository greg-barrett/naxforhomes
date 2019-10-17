

document.addEventListener("turbolinks:load", function() {
  //define the add fields action

  let addFeatureFields = function () {
    var imgLabel=document.createElement("label");
    imgLabel.htmlFor="project_feature_image"
    imgLabel.innerText="Image"
    console.log(imgLabel)

    var imgInput=document.createElement("input");
    imgInput.setAttribute('type', 'file')
    imgInput.setAttribute('name', 'project[feature][image]')
    imgInput.id="project_feature_image";
    console.log(imgInput)

    var descriptionLabel=document.createElement("label");
    descriptionLabel.htmlFor="project_feature_description"
    descriptionLabel.innerText="Description"
    console.log(descriptionLabel)

    var descriptionInput=document.createElement("input");
    descriptionInput.setAttribute('type', 'text')
    descriptionInput.setAttribute('name', 'project[feature][description]')
    descriptionInput.id="project_feature_description";
    console.log(descriptionInput)

    //add fields to a div
    var featureFieldsDiv=document.createElement("div")
    var featureFields=[imgLabel, imgInput, descriptionLabel, descriptionInput];
    featureFields.forEach( (item) => featureFieldsDiv.appendChild(item))
    console.log(featureFieldsDiv)
    
    //add div to the page
    var featureDiv= document.getElementById("features");
    featureDiv.appendChild(featureFieldsDiv)


  }


  //get the button
  var newFeatureBtn= document.getElementById("new-feature");
  console.log(newFeatureBtn)

  //add on click

  newFeatureBtn.addEventListener("click", addFeatureFields);

})
