

document.addEventListener("turbolinks:load", function() {
  //define the add fields action

  let addFeatureFields = function () {
    let index =new Date().getTime()
    var imgLabel=document.createElement("label");
    imgLabel.htmlFor="project_features_attributes_" + index + "_image"
    imgLabel.innerText="Image"
    console.log(imgLabel)

    var imgInput=document.createElement("input");
    imgInput.setAttribute('type', 'file')
    imgInput.setAttribute('name', 'project[features_attributes]['+ index + '][image]')
    imgInput.id="project_features_attributes_" + index + "_image";
    console.log(imgInput)

    var descriptionLabel=document.createElement("label");
    descriptionLabel.htmlFor="project_features_attributes_" + index + "_description"
    descriptionLabel.innerText="Description"
    console.log(descriptionLabel)

    var descriptionInput=document.createElement("input");
    descriptionInput.setAttribute('type', 'text')
    descriptionInput.setAttribute('name', 'project[features_attributes]['+ index + '][description]')
    descriptionInput.id="project_features_attributes_" + index + "_description";
    console.log(descriptionInput)

    //add fields to a div
    var featureFieldsDiv=document.createElement("div")
    featureFieldsDiv.classList.add("feature-fields")
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
