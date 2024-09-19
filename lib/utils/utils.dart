import 'package:festival_post_app/models/app_models.dart';

String frame_imgurl = "lib/assets/frames_image/";
String display_imgurl = "lib/assets/display_images/";
List<Map> allFestivalData = [
  {
    "name": "Diwali",
    "description":
        "Diwali, also known as the Festival of Lights, is one of the most significant festivals in India, symbolizing the victory of light over darkness, good over evil, and knowledge over ignorance.",
    "image": '${display_imgurl}display_diwali',
    "frame": [
      '${frame_imgurl}diwali1.png',
      '${frame_imgurl}diwali2.png',
      '${frame_imgurl}diwali3.png',
      '${frame_imgurl}diwali4.png',
      '${frame_imgurl}diwali5.png',
    ],
    "quotes": [
      "दीपावली की हार्दिक शुभकामनाएं! आपके जीवन में खुशियां और उत्साह बना रहे।",
      "दीपावली के पावन अवसर पर आपको और आपके परिवार को शुभकामनाएं।",
      "आपके घर में दीपों की रौशनी, खुशियों का उजाला हो।",
      "दीपावली का त्योहार आपके जीवन में खुशियों की बौछार लाए।",
      "दीपावली के इस पावन अवसर पर आपको धन, शौहरत, और सफलता मिले।"
    ]
  },
  {
    "name": "Holi",
    "description":
        "Holi, known as the Festival of Colors, is a vibrant Hindu festival celebrated with enthusiasm across India. It marks the arrival of spring and the end of winter.",
    "image": '${display_imgurl}diplay_holi',
    "frame": [
      '${frame_imgurl}holi1.png',
      '${frame_imgurl}holi2.png',
      '${frame_imgurl}holi3.png',
      '${frame_imgurl}holi4.png',
      '${frame_imgurl}holi5.png',
    ],
    "quotes": [
      "होली के इस रंगीन त्योहार में आपके जीवन में खुशियां और रंग भरे!",
      "होली के इस पावन मौके पर आपको और आपके परिवार को ढेरों शुभकामनाएं।",
      "होली की खुशबू से आपके जीवन को मिले खुशियों का संचार।",
      "होली के रंगों में गुलाल की खुशियां, और दोस्तों के साथ प्यार का प्रकटीकरण।",
      "होली का यह पावन अवसर आपके लिए सफलता और खुशियों की लहर लेकर आए।"
    ]
  },
  {
    "name": "Janmashtami",
    "description":
        "Janmashtami celebrates the birth of Lord Krishna, marked by fasting, night vigils, and reenactments of his life.",
    "image": '${display_imgurl}display_janmashtami',
    "frame": [
      '${frame_imgurl}janmashtami1.png',
      '${frame_imgurl}janmashtami2.png',
      '${frame_imgurl}janmashtami3.png',
      '${frame_imgurl}janmashtami4.png',
      '${frame_imgurl}janmashtami5.png',
    ],
    "quotes": [
      "जन्माष्टमी की शुभकामनाएं! श्री कृष्ण आपके जीवन में खुशियां लाएं।",
      "कन्हैया की मुरली की मधुर धुन से आपका जीवन सजता रहे।",
      "भगवान कृष्ण का आशीर्वाद सदा आपके साथ रहे।",
      "जन्माष्टमी का यह पर्व आपके लिए सुख और समृद्धि लाए।",
      "श्री कृष्ण जन्माष्टमी की हार्दिक शुभकामनाएं।"
    ]
  },
  {
    "name": "Makar Sankranti",
    "description":
        "Makar Sankranti, also known as Uttarayan, is a Hindu festival celebrated to mark the transition of the sun into the zodiac sign of Capricorn. It signifies the end of the winter solstice and the beginning of longer days.",
    "image": '${display_imgurl}display_uttarayan',
    "frame": [
      '${frame_imgurl}uttarayan1.png',
      '${frame_imgurl}uttarayan2.png',
      '${frame_imgurl}uttarayan3.png',
      '${frame_imgurl}uttarayan4.png',
      '${frame_imgurl}uttarayan5.png',
    ],
    "quotes": [
      "मकर संक्रांति के इस पावन पर्व में आपको और आपके परिवार को बहुत-बहुत शुभकामनाएं।",
      "उत्तरायण के इस मौसम में आपका जीवन हो खुशियों से भरा।",
      "सूर्य देव की किरणों से आपके जीवन को प्रकाशमय बनाए रखे।",
      "मकर संक्रांति का यह पावन अवसर आपके लिए समृद्धि और सफलता लाए।",
      "उत्तरायण के इस शुभ समय में आपके लिए नया साल और नई उम्मीदें।"
    ]
  },
  {
    "name": "Navratri",
    "description":
        "Navratri is a Hindu festival dedicated to the worship of the goddess Durga. It spans nine nights and is celebrated with fasting, prayer, and dance performances such as Garba and Dandiya.",
    "image": '${display_imgurl}display_navratri',
    "frame": [
      '${frame_imgurl}navratri1.png',
      '${frame_imgurl}navratri2.png',
      '${frame_imgurl}navratri3.png',
      '${frame_imgurl}navratri4.png',
      '${frame_imgurl}navratri5.png',
    ],
    "quotes": [
      "नवरात्रि के इस पावन पर्व में मां दुर्गा की कृपा आप पर बनी रहे।",
      "आपके जीवन में नवरात्रि की खुशियों का मिले बहुत सारा आनंद।",
      "नवरात्रि के इस शुभ अवसर पर मां दुर्गा से प्रार्थना है कि आपकी हर मनोकामना पूरी हो।",
      "नवरात्रि के ये नौ दिन आपको आत्मा और शक्ति से भरा हुआ महसूस कराएं।",
      "नवरात्रि के पावन अवसर पर आपके लिए खुशियों का अनंत स्रोत हो।"
    ]
  },
  {
    "name": "Ganesh Chaturthi",
    "description":
        "Ganesh Chaturthi is a Hindu festival celebrating the birth of Lord Ganesha, the elephant-headed god of wisdom and prosperity. It is observed with prayers, rituals, and the installation of Ganesha idols.",
    "image": '${display_imgurl}display_Ganesh_Chaturthi',
    "frame": [
      '${frame_imgurl}Ganesh_Chaturthi1.png',
      '${frame_imgurl}Ganesh_Chaturthi2.png',
      '${frame_imgurl}Ganesh_Chaturthi3.png',
      '${frame_imgurl}Ganesh_Chaturthi4.png',
      '${frame_imgurl}Ganesh_Chaturthi5.png',
    ],
    "quotes": [
      "गणेश चतुर्थी के इस पावन अवसर पर आपको और आपके परिवार को ढेरों शुभकामनाएं।",
      "गणपति बप्पा मोरया! मांगलमूर्ति मोरया! आपके जीवन में आए खुशियों का उद्घाटन।",
      "गणेश चतुर्थी के इस पावन मौके पर भगवान गणेश आपको बुद्धि और सफलता प्रदान करें।",
      "गणेश चतुर्थी का यह खास पावन अवसर आपके जीवन को सुख और समृद्धि से भर दे।",
      "गणेश चतुर्थी की शुभकामनाएं! गणपति बप्पा मोरया!"
    ]
  },
  {
    "name": "Raksha Bandhan",
    "description":
        "Raksha Bandhan is a festival celebrating the bond between brothers and sisters. Sisters tie a protective thread (rakhi) around their brothers' wrists, and brothers vow to protect them.",
    "image": '${display_imgurl}display_rakhi',
    "frame": [
      '${frame_imgurl}rakhi1.png',
      '${frame_imgurl}rakhi2.png',
      '${frame_imgurl}rakhi3.png',
      '${frame_imgurl}rakhi4.png',
      '${frame_imgurl}rakhi5.png',
    ],
    "quotes": [
      "रक्षा बंधन की हार्दिक शुभकामनाएं! भाई-बहन के बंधन को सदा बनाए रखें।",
      "आपका रिश्ता हमेशा प्यार और समझ से भरा रहे।",
      "भाई-बहन के इस रिश्ते में प्यार और समर्पण की बौछार हो।",
      "रक्षा बंधन पर आपके सभी सपने सच हों।",
      "भाई-बहन का यह बंधन सदा अटूट रहे।"
    ]
  },
  {
    "name": "Dussehra",
    "description":
        "Dussehra, also known as Vijayadashami, celebrates the victory of Lord Rama over the demon king Ravana. It marks the end of Navratri.",
    "image": '${display_imgurl}display_dussehra',
    "frame": [
      '${frame_imgurl}dussehra1.png',
      '${frame_imgurl}dussehra2.png',
      '${frame_imgurl}dussehra3.png',
      '${frame_imgurl}dussehra4.png',
      '${frame_imgurl}dussehra5.png',
    ],
    "quotes": [
      "दशहरा की शुभकामनाएं! बुराई पर अच्छाई की जीत का यह पर्व आपके जीवन में सुख और समृद्धि लाए।",
      "दशहरे के इस पावन पर्व पर आपको और आपके परिवार को बधाई।",
      "राम का विजय का यह पर्व आपके जीवन में नए उत्साह का संचार करे।",
      "दशहरा का यह पर्व आपके लिए खुशियों की बौछार लाए।",
      "दशहरा की हार्दिक शुभकामनाएं! आपके जीवन में हर बाधा का अंत हो।"
    ]
  },
  {
    "name": "Onam",
    "description":
        "Onam is a harvest festival celebrated in Kerala, marked by feasts, dances, and floral decorations. It commemorates the homecoming of the legendary King Mahabali.",
    "image": '${display_imgurl}display_onam',
    "frame": [
      '${frame_imgurl}onam1.png',
      '${frame_imgurl}onam2.png',
      '${frame_imgurl}onam3.png',
      '${frame_imgurl}onam4.png',
      '${frame_imgurl}onam5.png',
    ],
    "quotes": [
      "ओणम की हार्दिक शुभकामनाएं! आपके जीवन में खुशियों का संचार हो।",
      "महाबली के आगमन की खुशी में सभी मिलकर मनाएं।",
      "ओणम का यह त्योहार आपके परिवार को सुख और समृद्धि से भर दे।",
      "ओणम के इस पावन पर्व पर आप सभी को बधाई।",
      "ओणम का यह पर्व आपके जीवन में खुशियों की बौछार लाए।"
    ]
  },
];
List<AppModels> allFestival = allFestivalData
    .map(
      (e) => AppModels.fromMap(
        data: e,
      ),
    )
    .toList();
