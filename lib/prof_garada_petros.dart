import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class kingdome extends StatefulWidget {
  const kingdome({super.key});

  @override
  State<kingdome> createState() => _kingdomeState();
}

// ignore: camel_case_types
class _kingdomeState extends State<kingdome> {
  get selectedText => null;

  set zoomFactor(double zoomFactor) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Kingdom of hadiya '),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            Clipboard.setData(ClipboardData(text: selectedText));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/photo_2022-08-29_15-05-36.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: InteractiveViewer(
                minScale: 1,
                maxScale: 2,
                child: GestureDetector(
                  onDoubleTap: () {
                    setState(() {});
                  },
                  child: const Center(
                    child: SelectableText(
                      """ፊታውራሪ ጌጃ ገርቦ ማን ናቸዉ ? 
              
              ፊታውራሪ ጌጃ ገርቦ የትዉልድ ቦታ በወቅቱ አጠራር ከምባታና ሀዲያ አዉራጃ ኮንቶም ወረዳ በአሁኑ ደቡብ ብሔር ብሔረሰቦች ሕዝቦች ክልላዊ መንግሥት በሀዲያ ዞን ሌሞ ወረዳ ሹርሞ ዱባንቾ ቀበሌ ልዩ ስሙ ለምሰላ ተብሎ በሚጠራ አካባቢ ከአባታቸው ከአቶ ገርቦ እጃጆ እና ከእናታቸው ከወይዘሮ አዲቴ ሞሎሮ በ1860ዓ.ም ተወለዱ፡፡ 
              
              ከልጅነት ዕድሜያቸው ጀምረው ቤተሰቦቻቸውን በግብርና ሥራ የሚያግዙ፣አደን በማደን ይታወቁ እንደነበርና እንዲሁም ፈረስ ጉግስ እንደሚወዱ ይነገራል፡፡ ፊታዉራሪ ጌጃ ገርቦ ሁለት ሚስቶችን አግብተዉ ከሁለቱም ሚስቶቻቸዉ ሁለት ሴት እና አምስት ወንድ በድምሩ ሰባት ልጆችን ማፍራታቸዉን የጌጃ ከተማ ነዋሪና የባህል ሽማግሌ የሆኑት ገራድ ኤርጎጎ ኤደሞና የፊታዉራሪ ጌጃ ገርቦ የልጅ ልጅ ልጅ የሆኑት አቶ ደጉ ይማም ገልፀዉልናል፡፡ 
              
              የፊታውራሪ_ጌጃ_ገርቦ_የጀግንነት_ታሪክ 
              
              የካቲት 23 ቀን 1888 ዓመተ ምህረት ብዙ ታሪክ አለው፡፡ ኢትዮጵያውያን ነፃነታቸውን ያወጁበት ከሀገርን አልፎ ለአፍሪካ አህጉራችን ብሎም ለመላው ዓለም የጥቁር ህዝቦች ኩራት የሆነውን የአድዋ ድልን የወራሪዉ የጣሊያን ጦርን በመደምሰስ ጀብዱ ያስመዘገቡበት ዕለት ነዉ ያሉን በሆሳዕና ከተማ የታሪክ መምህር የሆኑት ፀጋዬ አዲሴ እንዲህ ያስረዳሉ፡፡ ጊዜው አዉሮፓዉያን አህጉረ አፍሪካን ቅኝ ለመግዛት በእጅጉ የሚመኙበት፣ያሻቸውን ለማድረግ የሚቋምጡበት ጊዜ ነበረ፡፡ 
              
              በወቅቱ በዘመናዊ የጦር መሣሪያና ሠራዊት የተጀራጀ፣ ቅኝ የመግዛትና የማስፋፋት ህልም ያለው የወራሪው ጣሊያን የጦር ኃይልን ኢትዮጵያ ሀገራችን አድዋ ላይ በጦርነቱ አሸንፋ ድል መቀዳጀት ቻለች ።የዚህ ስኬት ምስጢሩ አንድ እና አንድ ነበረ።እርሱም መላዉ የሀገራችን ህዝቦች የንጉሡን ጥሪ በመቀበል ከጫፍ እስከ ጫፍ ተነቃንቀዉ ከንጉሠ ነገሥቱ ጋር ለሀገር ሉዓላዊነትና ክብር በአንድነት በመቆማቸዉ ነዉ ይላሉ። 
              
              በዚህ ወቅት ፊታውራሪ ጌጃ ገርቦም የጣሊያን መንግስት ኢትዮጵያን በመዉረር ቅኝ ለመግዛት እንደተዘጋጀች እና ይህንንም በመዉጋት እንዲያረጋግጥ የሚገልጽ የክተት መልዕክት በ1888 ዓ.ም ሲታወጅ  መልዕክቱን በመቀበል ከሀዲያና ከምባታ ከ5 ሺህ በላይ የጦር ሠራዊት በመመልመልና በማደራጀት ስንቅና ትጥቅ አዘጋጅተው ጦሩን በመምራት አዲስ አበባ መግባታቸዉንም መምህር ፀጋዬ አስረድተዋል ። 
              
              አዲስ አበባ ከደረሱ በኋላ ጉዞ ወደ አድዋ እስኪጀምር ድረስ ለተወሰኑት ቀናት ጦራቸዉን ይዘዉ ቆይተዋል፡፡ በቆይታቸው ፊታውራሪ ጌጃ የመሩት እግረኛና የፈረሰኛ የጦር ሠራዊት ቁጥር ከፍ ያለ በመሆኑ ለአሰፋፈር እንዲያመች በሶስት ቦታ ከፍለዉ ነበር አስፍረዉ ያቆዩት፡፡ 
              
              ከነዚህም አንደኛው ጦር ጀዌ በሚባልበት ኦሮሚያ ዉስጥ በአሁኑ ዱከም ከተማ፤ ሁለተኛው ጦር ለገዳዲ ተብሎ በሚጠራው ስፍራ፤ ሶስተኛውን ጦር እራሳቸዉንም ጨምሮ ሞላ ማሩ በአሁኑ ጌጃ ሰፈር ተብሎ በሚታወቀው አካባቢ ሰፍረዋል።በሰፈሩበት አካባቢ የሠራዊታቸውን ጥንካሬ በፈረስ እየተዘዋወሩ እያስተባበሩ ቆዩ፡፡ ጉዞ ሲጀምር ሶስት ቦታ የሰፈራዉን ጦር በአንድ ላይ አመቻችተዉ ሁሉንም የጦር ሠራዊት አቀናጅተው ወደ ጦር ግንባር አድዋ አቀኑ ። 
              
              ጌጃ /Geejja/የሚለው ቃል የሀዲይሳ ቃል ሲሆን ሲነበብም ጠብቆ የሚነበብና በብሔሩም ቋንቋ ትልቅ የከበረ ወፍራም የሚል ትርጓሜ የያዘ ነዉ።ታዲያ እኚህ እንደስማቸዉም የከበሩ ታላቅ የጦር መሪ ፊታውራሪ ጌጃ ገርቦ ዉጊያ የሚካሄድበት አድዋ ደረሱ፡፡............""",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
