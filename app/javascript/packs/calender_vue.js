import Vue from 'vue/dist/vue.esm'
import Datepicker from 'vuejs-datepicker';

document.addEventListener('DOMContentLoaded', () => {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth()+1; //January is 0!

  var yyyy = today.getFullYear();
  if(dd<10){
      dd='0'+dd;
  }
  if(mm<10){
      mm='0'+mm;
  }

  var state = { date: new Date(yyyy, mm, dd) }

  const app = new Vue({
    el: '#datepicker',
    components: { Datepicker },
    data: {
      placeholder: "いつ？",
      state: state
    }
  })
})
