class CrewClass{


  final multiCrewArray = new List();
  final singleCrewArray = new List();



  int getSignonRow(String signonTime){

    int signonRow = 0;
    switch(signonTime){
      case '0500 - 0659' :{
        signonRow = 0;
      }
      break;
      case '0700 - 1359' :{
        signonRow = 1;
      }
      break;
      case '1400 - 2059':{
        signonRow = 2;
      }
      break;
      case '2100 - 2059':{
        signonRow = 3;
      }
      break;
      case '2200 - 0459':{
        signonRow = 4;
      }
      break;

    }
    return signonRow;
  }

  String getMultiCrew(String signonTime, String sectors){
    String dutyTime = '';
    if (signonTime != 'Select' && sectors != 'Select' ){//&& signonTime != '' && sectors != ''){
      multiCrewArray.add(['13','12.25','11.5','10.75','10','9.25','9','9']);
      multiCrewArray.add(['14','13.25','12.5','11.75','11','10.25','9.5','9']);
      multiCrewArray.add(['13','12.25','11.5','10.75','10','9.25','9','9']);
      multiCrewArray.add(['12','11.25','10.5','9.25','9','9','9','9']);
      multiCrewArray.add(['11','10.25','9.5','9','9','9','9','9']);

      var targetRow = getSignonRow(signonTime);
      var targetCol = int.parse(sectors) - 1;

      dutyTime = multiCrewArray[targetRow][targetCol];
    }
    return dutyTime;
  }

}