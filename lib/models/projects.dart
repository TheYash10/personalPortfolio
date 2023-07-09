class Project {
  final String? title, description;
  Project({this.title, this.description});
}

List<Project> demo_Projects = [
  Project(
    title: "Chat Application with FireBase - Flutter UI",
    description:
        "Today i have build this chat application which is integrated with firebase in flutter. There are total of 6 Screens. All these Screens have their own functionality. This app will run on both IOS and Android device. I have used firebase so that user can talk with their friends in group easily and efficiently. User can also login and register their own account in the chat application.",
  ),
  Project(
    title: "Coin Data App",
    description:
        "I Have build this application to know how API's works in flutter.There are total of 2 Screens.My app will give price of 1 BTC,1 ETC and 1 LTC for any currency. It is just simple app and i just want to learn how data get fetched from the API's",
  ),
  Project(
    title: "Live Weather App",
    description:
        "I build this application to get the live Weather of any place just by Searching the place in my application.There are total of 3 Screens in my application. My Live Weather app give accurate temperator of the particular area.In this application i have use Weather api to fetch the data of Weather of the area.This application will run on both ios and Andriod device.",
  ),
  Project(
      title: "BMI Calculator",
      description:
          "I have build this application to know about how UI/UX design made in flutter and how different widgets have different properties and functions to made a proper UI of applications. It is just a simple UI with getting that the person is overWeighted,Normal or UnderWeighted based on their age and weight.It consists of total of 2 Screens.")
];
