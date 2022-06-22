// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery3
//= require popper
//= require bootstrap-sprockets

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "@fortawesome/fontawesome-free/css/all"

require("jquery")
require("trix")
require("@rails/actiontext")
Rails.start()
Turbolinks.start()
ActiveStorage.start()

//   $(document).on('turbolinks:load', function(){
//     $("#addtag").click(function(){
//         $("#addtag-section").fadeToggle();
//         // $(this).fadeToggle();
//     });
//   });
 

var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})
    




