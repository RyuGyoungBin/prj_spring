<script src="/resources/concert/js/calendar.min.js"></script>
<script src="https://unpkg.com/codeflask/build/codeflask.min.js"></script>
<script type="text/javascript">
      var config = `
function selectDate(date) {
  $('#calendar-wrapper').updateCalendarOptions({
    date: date
  });
  console.log(calendar.getSelectedDate());
}

var defaultConfig = {
  weekDayLength: 1,
  date: '06/02/2023',
  onClickDate: selectDate,
  showYearDropdown: true,
  startOnMonday: false,
  showTodayButton: false,
};

var calendar = $('#calendar-wrapper').calendar(defaultConfig);
console.log(calendar.getSelectedDate());
`;
      eval(config);
      
    </script>
    <script defer src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    <script defer>
     
      
      $('.calendar-wrapper').updateCalendarOptions({
    	  disable: function (date) {
    	    const days = [0,2,5]
    	    return !days.includes(date.getDay())
    	},
    	min: "06/02/2023",
    	max: "06/06/2023"
    	});   
    </script>