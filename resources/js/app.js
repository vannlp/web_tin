import './bootstrap';

import "../css/style.css";

import "../css/header.css";

import "../css/home.css";
import "../css/sidebar.css";
import "../css/catePage.css";

// import "../css/bootstrap-icons.css";
import "./main";

import Alpine from 'alpinejs';
import Chart from 'chart.js/auto';

window.Alpine = Alpine;

Alpine.start();


const ctx = document.querySelector('#myChart');

if (ctx) {
    const atx = ctx.getContext('2d');

    const labels = [
        'a',
        'b',
        'c',
        'd',
        'e',
        'f'
      ];
    
      const data = {
        labels: labels,
        datasets: [{
          label: 'My First dataset',
          backgroundColor: [
            'red',
            'blue',
            'green',
            'yellow',
            'aqua',
            'pink'
          ],
          borderColor: 'rgb(255, 99, 132)',
          data: [5, 10, 5, 30, 20, 30],
        }]
      };
    
      const config = {
        type: 'bar',
        data: data,
        options: {}
      };

    const myChart = new Chart(document.getElementById('myChart'),config)
}





