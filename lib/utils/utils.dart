import 'package:intl/intl.dart';
class Utils {

  static String dateFormatHyphen(String substring) {
    var  finalDateToFormat="";
    try{
      if(substring.isEmpty || substring=='' || substring=='null' || substring=='Null' || substring=='-' || substring=='NULL' ){
        finalDateToFormat='';
      }else{

        ///Old
        // var inputFormat = DateFormat('yyyy-MM-dd');
        // var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
        // var outputFormat = DateFormat('dd-MMM-yyyy');
        // finalDateToFormat = outputFormat.format(inputDate);

        //dynamic updated
        finalDateToFormat = DateFormat.yMMMd().format(DateTime.parse(substring));

      }


      return finalDateToFormat;
    }catch(e){
      return substring;
    }
  }

}