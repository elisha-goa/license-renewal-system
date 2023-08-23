import static javax.swing.JOptionPane.*;
StringDict l2m=new StringDict();
String ln="F:/lnvt.txt";
String ln2[]=loadStrings(ln);

for (int a = 0; a < ln2.length; a ++) {
  String line = ln2 [a];
  int comma=line.indexOf(",");
  String license = line.substring(0, comma);
  String vType = line.substring(comma+1, line.length());
  l2m.set (license, vType);
}
String input =showInputDialog("enter your license number");
println("your license number is", input);
String k=l2m.get(input);
println("your type of vehcile is", k);
FloatDict mf=new FloatDict();
String mf1="F:/mtf.txt";
String mf2[]=loadStrings(mf1);
for (int b=0; b<mf2.length; b++) {
  String line1 = mf2 [b];
  int comma1=line1.indexOf(",");
  String vtype1 = line1.substring(0, comma1);
  String fee = line1.substring(comma1+1, line1.length());
  float n=float(fee);
  mf.set (vtype1, n);
}


String inputTN = showInputDialog("enter your transaction number");
String validTN = "13324412";

if (inputTN.equals(validTN)) {
  showMessageDialog (null, "your payment is successfully finished and you finish you renewal process we announce you when the new license is ready");

  String contents[]={input};
  saveStrings("F:/ License Numbers.txt", contents);
} else {
  showMessageDialog(null, "transaction number is invalid so you are notsuccessfully finish the payment please try again with correct transaction number");
}
exit ();
