//creating variabe which gets the element in its id
var time = document.getElementById('time');
var date=document.getElementById('date');
//creating variabe which contains lis to items
const day=["Sunday","Monday","Tuesday","Wednesday ","Thursday","Friday","Saturday"];
const month=['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
//current time
var showCurrentTime = function()
{
    // Getting Date and Time
    var Time = new Date();
    var Time1=Time.toLocaleTimeString('en-US',{timeZone: "Europe/London"})
    var Date5=Time.toLocaleDateString('en-US', {timeZone: "Europe/London"})
    var day3=Time.getDay('en-US', {timeZone: "Europe/London"})
    
    time.innerText = Time1;
   
    //splitting the date to by / to get day,year and month number
    const[month1, day1, year1]=Date5.split('/')
    const Date1=month[month1]+" "+day1+", "+year1
    date.innerHTML=day[day3]+" "+Date1;
}
setInterval(showCurrentTime,1000);
//creating variabe which gets the element in its id
let TimeZone=document.getElementById('time-zone')
let Lat=document.getElementById('latitude')
let Long=document.getElementById('longitude')
let Condition=document.getElementById('condition')
let Speed=document.getElementById('speed')
let Temp =document.getElementById('temp')
let Humidity=document.getElementById('humidity')
let Pressure=document.getElementById('pressure')
let Direction=document.getElementById('direction')
let Sunrise=document.getElementById('sunrise')
let Sunset=document.getElementById('sunset')
let Condition1='';
let Freshness=document.getElementById('freshness');

// Check browser storage first, use if there and less than 20 minute old
if(localStorage.when != null
    && parseInt(localStorage.when) + 1200000 > Date.now()) {
    let freshness = Math.round((Date.now() - localStorage.when)/1000) + " second(s)";
    
    // Show the data fetched from local storage in HTML
    TimeZone.innerHTML=localStorage.TiZ;
    Lat.innerHTML="Latitude = "+localStorage.Lati;
    Long.innerHTML="Longitude = "+localStorage.Longi;
    Condition.innerHTML="Weather condition = "+localStorage.Co;
    Speed.innerHTML="Wind Speed = "+localStorage.Sp+' m/s';
    Temp.innerHTML="Tempertaure = "+localStorage.Te+ '°C';
    Humidity.innerHTML="Humidity = "+localStorage.Hum+ ' %';
    Pressure.innerHTML="Pressure = "+localStorage.Pre+ ' hpa';
    Direction.innerHTML="Wind Direction = "+localStorage.Dir+ '°';
    Sunrise.innerHTML="Sunrise = "+localStorage.rise;
    Sunset.innerHTML="Sunset = "+localStorage.set;
    var updateweather = function()
                {   
                    //images shown according to  weather 
                    image=document.querySelector('img')
                    if (localStorage.Co1 == 'Clear'){
                        image.src = "https://openweathermap.org/img/wn/01d.png";
                                            
                    }
                    else if (localStorage.Co1== 'Clouds')
                    {
                        image.src = "https://openweathermap.org/img/wn/02d.png";
                    }
                    else if (localStorage.Co1 == 'Rain')
                    {
                        image.src = "https://openweathermap.org/img/wn/10d.png";
                    }
                    else if (localStorage.Co1 == 'Snow')
                    {
                        image.src = "https://openweathermap.org/img/wn/13d.png";
                    }
                    else if (localStorage.Co1 =='Thunderstorm' )
                    {
                        image.src = "https://openweathermap.org/img/wn/11d.png";
                    }
                    else if(localStorage.Co1=="Drizzle")
                    {
                        image.src = "https://openweathermap.org/img/wn/09d.png";
                    }
                    else if(localStorage.Co1=='Mist'||
                            localStorage.Co1=='Smoke'||
                            localStorage.Co1=='Haze'||
                            localStorage.Co1=='Dust'||
                            localStorage.Co1=='Fog'||
                            localStorage.Co1=='Sand'||
                            localStorage.Co1=='Dust'||
                            localStorage.Co1=='Ash'||
                            localStorage.Co1=='Squall'||
                            localStorage.Co1=='Tornado')
                            {
                                image.src="https://openweathermap.org/img/wn/50d.png"
                            }
                    else
                    {
                        image.src="https://us.123rf.com/450wm/bankrx/bankrx2002/bankrx200200058/139551714-grunge-red-unavailable-word-oval-rubber-seal-stamp-on-white-background.jpg?ver=6"
                    }
                };
                updateweather();
    }
    // No local cache, access network
    else{
        // fetching the data from the given API
        fetch("http://pritam-2226153.infinityfreeapp.com/Pritam_2226153.php?city=doncaster")
        // fetch('https://api.openweathermap.org/data/2.5/weather?lat=53.522820&lon=-1.128462&appid=6367695619317589abc0070b43ee19ba&units=metric'
            
        // Convert response string to json object
          .then(response => response.json())
          .then(response => {
         
            //showing the fetched data 
            console.log(response);	
            
            //storing and writing the data fetched from the api into HTML
            TimeZone.innerHTML=response.name;
            Lat.innerHTML="Latitude = "+response.lat;
            Long.innerHTML="Longitude = "+response.lon;
            Condition.innerHTML="Weather condition = "+response.con;
            Speed.innerHTML = "Wind Speed = "+response.speed+' m/s';
            Temp.innerHTML = "Tempertaure = "+Math.round(response.temp)+ '°C';
            Humidity.innerHTML = "Humidity = "+response.humidity+ ' %';
            Pressure.innerHTML = "Pressure = "+response.pressure+ ' hpa';
            Direction.innerHTML = "Wind Direction = "+response.direction+ '°';
        
            let rise = response.sunrise;
            let date2 = new Date(rise*1000).toLocaleTimeString('en-US',{timeZone: "Europe/London"});
            Sunrise.innerHTML="Sunrise = "+date2;
            //changing the UTC in from api to show in proper format
            var set=response.sunset;
            var date3 = new Date(set*1000).toLocaleTimeString('en-US',{timeZone: "Europe/London"});
            Sunset.innerHTML="Sunset = "+date3;
        
            const Condition1=response.W_Main;
            var updateweather = function()
                {   
                    //images shown according to  weather 
                    image=document.querySelector('img')
                    if (Condition1 == 'Clear'){
                        image.src = "https://openweathermap.org/img/wn/01d.png";
                                            
                    }
                    else if (Condition1== 'Clouds')
                    {
                        image.src = "https://openweathermap.org/img/wn/02d.png";
                    }
                    else if (Condition1 == 'Rain')
                    {
                        image.src = "https://openweathermap.org/img/wn/10d.png";
                    }
                    else if (Condition1 == 'Snow')
                    {
                        image.src = "https://openweathermap.org/img/wn/13d.png";
                    }
                    else if (Condition1 =='Thunderstorm' )
                    {
                        image.src = "https://openweathermap.org/img/wn/11d.png";
                    }
                    else if(Condition1=="Drizzle")
                    {
                        image.src = "https://openweathermap.org/img/wn/09d.png";
                    }
                    else if(Condition1=='Mist'||
                            Condition1=='Smoke'||
                            Condition1=='Haze'||
                            Condition1=='Dust'||
                            Condition1=='Fog'||
                            Condition1=='Sand'||
                            Condition1=='Dust'||
                            Condition1=='Ash'||
                            Condition1=='Squall'||
                            Condition1=='Tornado')
                            {
                                image.src="https://openweathermap.org/img/wn/50d.png"
                            }
                    else
                    {
                        image.src="https://us.123rf.com/450wm/bankrx/bankrx2002/bankrx200200058/139551714-grunge-red-unavailable-word-oval-rubber-seal-stamp-on-white-background.jpg?ver=6"
                    }
                };
                updateweather();
        
                // clear local storage
                // localStorage.clear();
        
                // Storing data in Local Storage
                localStorage.TiZ=response.name;
                localStorage.Co=response.con;
                localStorage.Lati=response.lat;
                localStorage.Longi=response.lon;
                localStorage.Sp=response.speed;
                localStorage.Te=Math.round(response.temp);
                localStorage.Hum=response.humidity;
                localStorage.Pre=response.pressure;
                localStorage.Dir=response.direction;
                localStorage.rise=date2;
                localStorage.set=date3;
                localStorage.Co1=response.W_Main;
                localStorage.when=Date.now();
            })		
            .catch(err => {
            // Display errors in console
            console.log(err);})}



    