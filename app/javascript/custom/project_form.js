

document.addEventListener("turbolinks:load", function() {
  //define the add fields action

  let addFeatureFields = function () {
    let index =new Date().getTime()
    var imgLabel=document.createElement("label");
    imgLabel.htmlFor="project_features_attributes_" + index + "_image"
    imgLabel.innerText="Image"
    //console.log(imgLabel)

    var imgInput=document.createElement("input");
    imgInput.setAttribute('type', 'file')
    imgInput.setAttribute('name', 'project[features_attributes]['+ index + '][image]')
    imgInput.setAttribute('required', true)
    imgInput.setAttribute('data-direct-upload-url', "http://www.naxforhomes.com/rails/active_storage/direct_uploads?locale=en")
    imgInput.id="project_features_attributes_" + index + "_image";
    imgInput.classList.add("form-control-file")
    //console.log(imgInput)

    var groupOne=document.createElement("div")
    groupOne.classList.add("form-group")
    groupOne.appendChild(imgLabel)
    groupOne.appendChild(imgInput)

    var lefty=document.createElement("div")
    lefty.classList.add("feature-preview-container", "col-lg-4")
    lefty.appendChild(groupOne)


    var descriptionLabel=document.createElement("label");
    descriptionLabel.htmlFor="project_features_attributes_" + index + "_description"
    descriptionLabel.innerText="Description"
    //console.log(descriptionLabel)

    var descriptionInput=document.createElement("textarea");
    //descriptionInput.setAttribute('type', 'text')
    descriptionInput.setAttribute('required', true)
    descriptionInput.setAttribute('name', 'project[features_attributes]['+ index + '][description]')
    descriptionInput.id="project_features_attributes_" + index + "_description";
    descriptionInput.classList.add("form-control")

    var groupTwo=document.createElement("div")
    groupTwo.classList.add("form-group")
    groupTwo.appendChild(descriptionLabel)
    groupTwo.appendChild(descriptionInput)

    var righty=document.createElement("div")
    righty.classList.add("align-self-center", "col-lg-8")
    righty.appendChild(groupTwo)

    //console.log(descriptionInput)
    var closerCon=document.createElement("div")
    var closer=document.createElement("div")
    closerCon.appendChild(closer)
    closerCon.classList.add("closer")
    let removeFeature = function () {
      this.parentElement.parentElement.remove()
    }
    closer.addEventListener("click", removeFeature)


    //add fields to a div
    var featureFieldsDiv=document.createElement("div")
    featureFieldsDiv.classList.add("row", "feature-previews", "f-p-style")
    featureFieldsDiv.appendChild(closerCon)
    var cols=[lefty, righty];
    cols.forEach( (item) => featureFieldsDiv.appendChild(item))
    //console.log(featureFieldsDiv)

    var featurePreviews=document.getElementsByClassName("feature-previews")
    //console.log(featurePreviews)
    var ref=featurePreviews[featurePreviews.length -1]
    ref.parentNode.insertBefore(featureFieldsDiv, ref.nextSibling )
  }

  //get the button
  var newFeatureBtn= document.getElementById("new-feature");
  if (newFeatureBtn) {
    newFeatureBtn.addEventListener("click", addFeatureFields);
  }

})
