let h,m,s,session="A.M.";

function showTime1()
{
    let date = new Date();
    h=date.getHours();

    if(h==0)
    {
        h=12;
    }
    if(h>12)
    {
        h-=12;
        session="P.M.";
    }
    h=(h<10)?"0"+h:h;
    let time=h;
    document.getElementById('MyClock1').innerHTML=time;
    document.getElementById('MyClock1').textContent=time;
    setTimeout(showTime1, 1000);
}

function showTime2()
{
    let date = new Date();
    
    m=date.getMinutes();
    

    if(h==0)
    {
        h=12;
    }
    if(h>12)
    {
        h-=12;
        session="P.M.";
    }
   
    m=(m<10)?"0"+m:m;
   
    let time=m;
    document.getElementById('MyClock2').innerHTML=time;
    document.getElementById('MyClock2').textContent=time;
    setTimeout(showTime2, 1000);
}

function showTime3()
{
    let date = new Date();
    s=date.getSeconds();

    if(h==0)
    {
        h=12;
    }
    if(h>12)
    {
        h-=12;
        session="P.M.";
    }
    s=(s<10)?"0"+s:s;
    let time=s;
    document.getElementById('MyClock3').innerHTML=time;
    document.getElementById('MyClock3').textContent=time;
    setTimeout(showTime3, 1000);
}

showTime1();
showTime2();
showTime3();