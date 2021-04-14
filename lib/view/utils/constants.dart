import 'package:flutter/material.dart';

//Colors
const Color primaryColorDemo1 = Color(0xFF262833);
const Color accentColorDemo1 = Color(0xFF36C7D0);
const Color accent1Color = Color(0xFF272121);
const Color accent2Color = Color(0xFF4d4545);
const Color accent3Color = Color(0xFF393232);
const Color whiteColor = Colors.white;
const Color white10Color = Colors.white10;
const Color blackColor = Colors.black;
const Color black45Color = Colors.black45;
const Color black87Color = Colors.black87;
const Color greyColor = Colors.grey;
const Color transparentColor = Colors.transparent;
const Color deepPurpleColor = Colors.deepPurple;
const Color deepPurpleAccentColor = Colors.deepPurpleAccent;
const Color gradientOneColor = Color(0xfffbb448);
const Color gradientTwoColor = Color(0xfff7892b);
const Color blueFacebookColor = Color(0xff1959a9);
const Color blueFacebookButtonColor = Color(0xff2872ba);
const Color registerTextColor = Color(0xfff79c4f);
const Color loginRichTextColor = Color(0xffe46b10);
const Color demoScreen2FillColor = Colors.black26;

const Color primaryColorDemo3 = Color(0xFF476d7c);
const Color secondaryColorDemo3 = Color(0xFF254b62);
const Color backgroundColorDemo3 = Color(0xFF1d3e53);
const Color textColorDemo3 = Color(0xFF77abb7);
Color orangeForDemo3Color = Colors.orange[200];
Color greyBgForDemo3Color = Colors.grey.shade300;

const Color loginGradientStart = Color(0xFF152a38);
const Color loginGradientEnd = Color(0xFF6a0572);
const Color white = Color(0xFFd1d4c9);
const Color black = Color(0xFF29435c);
const Color snackBarColor = Color(0xFF29a19c);
const Color menuBarDemo4Color = Color(0x552B2B2B);
const Color blueIconDemo4Color = Color(0xFF0084ff);
Color grey400 = Colors.grey[400];

const Color primaryGradOneColor = Color(0xFF383B48);
const Color primaryGradTwoColor = Color(0xFF565662);
const Color buttonBackgroundColor = Color(0xFF8B90A0);
const Color submitButtonBackgroundColor = Color(0xFF272737);
const Color darkRedColor = Color(0xFF610504);
const Color brightRedColor = Color(0xFFA00605);
const Color purplishColor = Color(0xFF792890);
const Color blackBGColor = Color(0xFF0E090B);

const LinearGradient bgGradient = LinearGradient(
  colors: [primaryGradOneColor, blackBGColor],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const LinearGradient bgGradientProfile = LinearGradient(
  colors: <Color>[buttonBackgroundColor, primaryGradTwoColor],
  stops: <double>[0.0, 0.9],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const LinearGradient primaryGradient = LinearGradient(
  colors: <Color>[loginGradientStart, loginGradientEnd],
  stops: <double>[0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

//Screen Tag
const RegisterPageDemo1Tag = 'RegisterPageDemo1Tag';
const ProfilePageDemo1Tag = 'ProfilePageDemo1Tag';
const LoginPageDemo1Tag = 'LoginPageDemo1Tag';
const RegisterPageDemo2Tag = 'RegisterPageDemo2Tag';
const ProfilePageDemo2Tag = 'ProfilePageDemo2Tag';
const LoginPageDemo2Tag = 'LoginPageDemo2Tag';
const RegisterPageDemo3Tag = 'RegisterPageDemo3Tag';
const ProfilePageDemo3Tag = 'ProfilePageDemo3Tag';
const LoginPageDemo3Tag = 'LoginPageDemo3Tag';
const RegisterPageDemo4Tag = 'RegisterPageDemo4Tag';
const ProfilePageDemo4Tag = 'ProfilePageDemo4Tag';
const LoginPageDemo4Tag = 'LoginPageDemo4Tag';
const RegisterPageDemo5Tag = 'RegisterPageDemo5Tag';
const ProfilePageDemo5Tag = 'ProfilePageDemo5Tag';
const LoginPageDemo5Tag = 'LoginPageDemo5Tag';
const MainHomePageTag = 'MainHomePageTag';

//Strings
const loginStr = "Login";
const loginHint = "Please Sign in to continue";
const forgotpass = "Forgot Password ?";
const recoverStr = "Recover";
const signUpHint = "Don't have an account ?";
const signIntoUrAccount = "Sign in to your account";
const emailStr = "Email";
const welcomeStr = "Welcome";
const emailIdStr = "Email Id";
const emailAddStr = "Email Address";
const passStr = "Password";
const createAccount = "Create Account";
const createAccountHint = "Please fill the input below here";
const fullNameStr = 'FULL NAME';
const nameStr = 'Name';
const confirmationStr = 'Confirmation';
const firstNameStr = "First Name";
const lastNameStr = "Last Name";
const userNameStr = 'Username';
const phoneCapStr = 'PHONE';
const phoneStr = 'Phone';
const mobileNoStr = 'Mobile Number';
const twitterStr = 'Twitter';
const followersStr = "FOLLOWERS";
const followingStr = 'FOLLOWING';
const facebookStr = 'Facebook';
const confirmPassStr = 'CONFIRM PASSWORD';
const alreadyAccount = 'Already have an account ?';
const backStr = 'Back';
const orStr = 'or';
const fStr = 'f';
const likeStr = "Likes";
const commentStr = "Comments";
const favouritesStr = "Favourites";
const userInfoStr = "User information";
const websiteStr = "Website";
const aboutStr = "About";
const joinedStr = 'Joined Date';
const registerStr = 'Register';
const loginRichText1 = 'Lo';
const loginRichText2 = 'g';
const loginRichText3 = 'in';
const registerRichText1 = 'Re';
const registerRichText2 = 'gis';
const registerRichText3 = 'ter';
const viewProfileStr = 'View Profile';
final String SIGN_IN = 'signin';
final String SIGN_UP = 'signup';
const existingStr = "Existing";
const newStr = "New";
const photosStr = "Photos";
const followersSmallStr = "Followers";
const followingSmallStr = "Following";
const followMeStr = "FOLLOW ME";
const showAllCommentStr = "Show all comments";
const addToGrpStr = "Add to group";
const termsRichText1 = 'I agree to the DarkDemo ';
const termsRichText2 = 'Terms of Service ';
const termsRichText3 = 'And ';
const termsRichText4 = 'Privacy Policy ';

//Button String
const loginBTN = "LOGIN";
const signUpBTN = "SIGN UP";
const signInBTN = "SIGN IN";
const backToHomeBTN = "Back To \nHome";
const loginPage1BTN = 'DemoScreen1';
const loginPage2BTN = 'DemoScreen2';
const loginPage3BTN = 'DemoScreen3';
const loginPage4BTN = 'DemoScreen4';
const loginPage5BTN = 'DemoScreen5';
const loginWithFbBtn = 'Log in with Facebook';

//Temp String
const userNameExp = 'Joseph Meza';
const emailExp = 'joseph.eza112@gmail.com';
const designationExp = 'joseph.eza112@gmail.com';
const addressExp = "California, United States";
const phoneExp = '562-546-9594';
const twitterExp = '@joseph.meza';
const facebookExp = 'facebook.com/josephmeza';
const websiteExp = 'https://www.josephmeza.com';
const loremIpsum =
    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab.";
const joinDateExp = '15 February 2019';
