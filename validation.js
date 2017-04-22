function myFunction(){
	var x = document.forms["csiform"]["fname"].value;
   	if (x=="") {
       	 alert("Name must be filled out");
         return false;
   	 }

	var x = document.forms["csiform"]["mname"].value;
    	if (x=="") {
          alert("Middle Name must be filled out");
          return false;
    	}

	var x = document.forms["csiform"]["lname"].value;
    	if (x=="") {
       	 alert("Last Name must be filled out");
      	 return false;
    	}

	if((document.csiform.gen[0].checked==false)&&(document.csiform.gen[1].checked==false)) {
	  alert ( "Please choose your Gender"); 
          return false;
        }

	var val = pno.value
	if (/^\d{10}$/.test(val)) {
	} 
	else {
    	  alert("Invalid contact number")
    	  return false;
	}

	if(document.getElementById("dept").value=="no"){
      	  alert("Please select a department");
      	  return false;
  	 }

  	 if(document.getElementById("yr").value=="no"){
     	   alert("Please select a year");
      	   return false;
   	 }

	var val = noid.value
	if (/^\d{10}$/.test(val)) {
	} 
	else {
   	 alert("Invalid student Id")
    	 return false;
	}

	if((document.csiform.skl[0].checked==false)&&(document.csiform.skl[1].checked==false)&&(document.csiform.skl[2].checked==false)&&(document.csiform.skl[3].checked==false)
	&&(document.csiform.skl[3].checked==false)&&(document.csiform.skl[4].checked==false)&&(document.csiform.skl[5].checked==false)) 
	{
	  alert ( "Please select a skill"); 
	  return false;
	}
}

function disableDmem()
{
	var t=document.forms["csiform"];
	t.dmem[0].disabled=true;
	t.dmem[1].disabled=true;
	t.dmem[2].disabled=true;
	t.dmem[3].disabled=true;
}

function disableImem()
{
	var t=document.forms["csiform"];
	t.imem[0].disabled=true;
	t.imem[1].disabled=true;
	t.imem[2].disabled=true;
	t.imem[3].disabled=true;
	t.imem[4].disabled=true;
}

function enableDmem()
{
	var t=document.forms["csiform"];
	t.dmem[0].disabled=false;
	t.dmem[1].disabled=false;
	t.dmem[2].disabled=false;
	t.dmem[3].disabled=false;
	t.dmem[4].disabled=false;

}

function enableImem()
{
var t=document.forms["csiform"];
	t.imem[0].disabled=false;
	t.imem[1].disabled=false;
	t.imem[2].disabled=false;
	t.imem[3].disabled=false;
	t.imem[4].disabled=false;
}

function manageFee()
{
	var t = document.forms["csiform"];
	if (t.dmem[0].checked == true)
	{
		disableImem();
		t.amt.value="200";
	}
	if (t.dmem[1].checked == true)
	{
		disableImem();
		t.amt.value="300";
	}
	if (t.dmem[2].checked == true)
	{
		disableImem();
		t.amt.value="400";
	}
	if (t.dmem[3].checked == true)
	{
		enableImem();
		disableDmem();
		t.amt.value="";
	}
	if (t.imem[0].checked == true)
	{
		disableDmem();
		t.amt.value="1150";
	}
	if (t.imem[1].checked == true)
	{
		disableDmem();
		t.amt.value="2070";
	}
	if (t.imem[2].checked == true)
	{
		disableDmem();
		t.amt.value="2990";
	}
	if (t.imem[3].checked == true)
	{
		disableDmem();
		t.amt.value="15000";
	}
	if (t.imem[4].checked == true)
	{
		t.amt.value="";
		enableDmem();
		t.dmem[3].disabled=true;
		disableImem();
						
	}
}
