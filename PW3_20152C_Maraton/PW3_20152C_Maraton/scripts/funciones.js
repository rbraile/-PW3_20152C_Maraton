function validateDate(oSrc, args) {
    var iDay, iMonth, iYear;
    var arrValues;
    arrValues = args.Value.split("-");
    iDay = arrValues[0];
    iMonth = arrValues[1];
    iYear = arrValues[2];

    var testDate = new Date(iYear, iMonth - 1, iDay);
    if ((testDate.getDate() != iDay) ||
        (testDate.getMonth() != iMonth - 1) ||
        (testDate.getFullYear() != iYear))
    {
        args.IsValid = false;
        return;
    }
      
    return true;
}