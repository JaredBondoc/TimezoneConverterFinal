let nav = 0;
let clicked = null;
let events = localStorage.getItem('events') ? JSON.parse(localStorage.getItem('events')) : [];

const calendar = document.getElementById('calendar');
const newEventModal = document.getElementById('newEventModal');
const deleteEventModal = document.getElementById('deleteEventModal');
const backDrop = document.getElementById('modalBackDrop');
const eventTitleInput = document.getElementById('eventTitleInput');
const weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

//Create new modal for event
function openModal(date) {
  clicked = date;

  const eventForDay = events.find(e => e.date === clicked);

  if (eventForDay) {
    document.getElementById('eventText').innerText = eventForDay.title;
    deleteEventModal.style.display = 'block';
  } else {
    newEventModal.style.display = 'block';
  }

  backDrop.style.display = 'block';
}

//Load Date
function load() {
  const dt = new Date();

  if (nav !== 0) {
    dt.setMonth(new Date().getMonth() + nav);
  }

  const day = dt.getDate();
  const month = dt.getMonth();
  const year = dt.getFullYear();

  const firstDayOfMonth = new Date(year, month, 1);
  const daysInMonth = new Date(year, month + 1, 0).getDate();
  
  const dateString = firstDayOfMonth.toLocaleDateString('en-us', {
    weekday: 'long',
    year: 'numeric',
    month: 'numeric',
    day: 'numeric',
  });
  const paddingDays = weekdays.indexOf(dateString.split(', ')[0]);

  document.getElementById('monthDisplay').innerText = 
    `${dt.toLocaleDateString('en-us', { month: 'long' })} ${year}`;

  calendar.innerHTML = '';

  for(let i = 1; i <= paddingDays + daysInMonth; i++) {
    const daySquare = document.createElement('div');
    daySquare.classList.add('day');

    const dayString = `${month + 1}/${i - paddingDays}/${year}`;

    if (i > paddingDays) {
      daySquare.innerText = i - paddingDays;
      const eventForDay = events.find(e => e.date === dayString);

      if (i - paddingDays === day && nav === 0) {
        daySquare.id = 'currentDay';
      }

      if (eventForDay) {
        const eventDiv = document.createElement('div');
        eventDiv.classList.add('event');
        eventDiv.innerText = eventForDay.title;
        daySquare.appendChild(eventDiv);
      }

      daySquare.addEventListener('click', () => openModal(dayString));
    } else {
      daySquare.classList.add('padding');
    }

    calendar.appendChild(daySquare);    
  }
}

//Remove Event
function closeModal() {
  eventTitleInput.classList.remove('error');
  newEventModal.style.display = 'none';
  deleteEventModal.style.display = 'none';
  backDrop.style.display = 'none';
  eventTitleInput.value = '';
  clicked = null;
  load();
}

//Save Event
function saveEvent() {
  if (eventTitleInput.value) {
    eventTitleInput.classList.remove('error');

    events.push({
      date: clicked,
      title: eventTitleInput.value,
    });

    localStorage.setItem('events', JSON.stringify(events));
    closeModal();
  } else {
    eventTitleInput.classList.add('error');
  }
}

//Delete Event
function deleteEvent() {
  events = events.filter(e => e.date !== clicked);
  localStorage.setItem('events', JSON.stringify(events));
  closeModal();
}

//Initialize
function initButtons() {
  document.getElementById('nextButton').addEventListener('click', () => {
    nav++;
    load();
  });

  document.getElementById('backButton').addEventListener('click', () => {
    nav--;
    load();
  });

  document.getElementById('saveButton').addEventListener('click', saveEvent);
  document.getElementById('cancelButton').addEventListener('click', closeModal);
  document.getElementById('deleteButton').addEventListener('click', deleteEvent);
  document.getElementById('closeButton').addEventListener('click', closeModal);
}

initButtons();
load();

const options = document.querySelector('.customize-option');
const icon = document.querySelector('.customize-icon');

//Show the customize options panel clicking the Settings icon
icon.addEventListener('click',() => {
    options.classList.toggle('active')
})

//Select all tag that can contain txt
const allEl = document.querySelectorAll('p,button,h1,h2,h3,h4,h5,h6,span,a');

//Decrease font size
function reduce(){
    allEl.forEach(el => {
        //if the current element does not have a role attribute, then proceed
        if(el.getAttribute('role') !== 'customize-page'){
            let elFont = Math.floor(parseFloat(window.getComputedStyle(el, null).getPropertyValue('font-size')));
            el.style.fontSize = (elFont - 4) + 'px'
        }
    })     
}

//Increase font size
function large(){
    allEl.forEach(el => {
        if(el.getAttribute('role') !== "customize-page"){
            let elFont = Math.floor(parseFloat(window.getComputedStyle(el, null).getPropertyValue('font-size')));
            el.style.fontSize = (elFont + 4) + 'px'
        }
    })
}


//Font style
function serif(){
    allEl.forEach(el => {
        if(el.getAttribute('role') !== 'customize-page'){
            el.style.fontFamily = 'serif';
        }
    })
}
function arial(){
    allEl.forEach(el => {
        if(el.getAttribute('role') !== 'customize-page'){
            el.style.fontFamily = 'arial';
        }
    })
}
function tahoma(){
    allEl.forEach(el => {
        if(el.getAttribute('role') !== 'customize-page'){
            el.style.fontFamily = 'tahoma';
        }
    })
}

//Background colour
function dblue(){
    //Reverse to default
    document.getElementsByTagName('BODY')[0].style.background = '#1b1b32'

    allEl.forEach(el => {
        if(el.getAttribute('role') !== 'customize-page'){
            //Select the specific element color
           let elColor = window.getComputedStyle(el, null).getPropertyValue('color');

           
        }
    })
}

function dark(){
    //Change the body color to black
    document.getElementsByTagName('BODY')[0].style.background = '#1C1F2B'

    allEl.forEach(el => {
        if(el.getAttribute('role') !== 'customize-page'){
            //Select the specific element color
           let elColor = window.getComputedStyle(el, null).getPropertyValue('color');

         
        }
    })
}

function white(){
    //Change the body color to light
    document.getElementsByTagName('BODY')[0].style.background = '#aaaaaa'

    allEl.forEach(el => {
        if(el.getAttribute('role') !== 'customize-page'){
            //Select the specific element color
           let elColor = window.getComputedStyle(el, null).getPropertyValue('color');
        
        }
    })
}