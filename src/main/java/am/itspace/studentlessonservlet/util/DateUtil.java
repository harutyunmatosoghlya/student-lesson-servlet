package am.itspace.studentlessonservlet.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class DateUtil {
    private static final SimpleDateFormat SDF = new SimpleDateFormat("HH:mm");
    private static final SimpleDateFormat SDF_SQL = new SimpleDateFormat("HH:mm");
    private static final SimpleDateFormat SDF_WEB_DATE = new SimpleDateFormat("HH:mm");

    public static Date fromStringToDate(String dateStr) throws ParseException {
        return SDF.parse(dateStr);
    }

    public static String fromDateToWebString(Date date) {
        return SDF_WEB_DATE.format(date);
    }

    public static Date fromWebStringToDate(String dateStr) throws ParseException {
        return SDF_WEB_DATE.parse(dateStr);
    }

    public static Date fromSqlStringToDate(String dateStr) throws ParseException {
        return SDF_SQL.parse(dateStr);
    }

    public static String fromDateToString(Date date) {
        return SDF.format(date);
    }

    public static String fromDateToSqlString(Date date) {
        return SDF_SQL.format(date);
    }
}