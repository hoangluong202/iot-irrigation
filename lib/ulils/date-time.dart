class DateTimeUtils {
  static String getFormattedDate(DateTime dateTime) {
    return "${dateTime.toLocal()}".split(' ')[0].split('-').reversed.join('/');
  }

  static String getFormattedTime(DateTime dateTime) {
    return "${dateTime.toLocal()}".split(' ')[1].split('.')[0];
  }
}
