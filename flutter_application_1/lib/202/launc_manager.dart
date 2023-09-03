
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

mixin launcmixin{
  Future<void> _launchUrl(String Url) async {

    if (await canLaunchUrl(Uri(path: Url)) ) {
      !await launchUrlString(Url);
    }



  
}
}