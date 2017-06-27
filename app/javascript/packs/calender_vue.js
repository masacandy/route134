import Vue from 'vue/dist/vue.esm'
import Datepicker from 'vuejs-datepicker';

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#datepicker',
    components: { Datepicker },
    data: {
      placeholder: "いつ？"
    }
  })
})
