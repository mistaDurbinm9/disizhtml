


var MAX_NUMBERS=10;

var nums=[];
for(var i=0; i<MAX_NUMBERS;i++)
{
  nums[i]= Math.floor(Math.random()*10);
}

function getValue(){
  nums.sort();
  document.getElementById('out').innerHTML += '<br>Numbas== ' + (nums)

}
function Average(){
  nums.sort();
  var total = 0;
  var length = 0;

  for(var i = 0; i < nums.length; i++){
    total += nums[i];
    console.log(nums);
  }
  length = total/nums.length
  document.getElementById('out').innerHTML += '<br>Mean== ' + (length);
}

function median() {

  var half = Math.floor(nums.length/2);
  //document.write(half);
  if(nums.length % 2)
  {
    document.getElementById('out').innerHTML += '<br>Median== ' + (nums[half]);

  }
  else{
    document.getElementById('out').innerHTML += '<br>Median== ' + ((nums[half-1] + nums[half]) / 2.0);
  }
}
function mode(){

  var numMapping = {};
  for(var i = 0; i < nums.length; i++){
    if(numMapping[nums[i]] === undefined){
      numMapping[nums[i]] = 0;
    }
    numMapping[nums[i]] += 1;
  }
  var greatestFreq = 0;
  var mode;
  for(var prop in numMapping){
    if(numMapping[prop] > greatestFreq){
      greatestFreq = numMapping[prop];
      mode = prop;
    }
  }
  document.getElementById('out').innerHTML += '<br>Mode== ' + (parseInt(mode));
}

//console.log(getValue());
