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

  // {
  //   "name": "Bhai Dooj",
  //   "description":
  //       "Bhai Dooj celebrates the bond between brothers and sisters, where sisters pray for their brothers' well-being, and brothers promise to protect them.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Bhai_Dooj.jpg/640px-Bhai_Dooj.jpg",
  //   "frame": [
  //     '${imgurl}bhaidooj1.png',
  //     '${imgurl}bhaidooj2.png',
  //     '${imgurl}bhaidooj3.png',
  //     '${imgurl}bhaidooj4.png',
  //     '${imgurl}bhaidooj5.png',
  //   ],
  //   "quotes": [
  //     "भाई दूज की शुभकामनाएं! भाई-बहन का यह रिश्ता सदा मजबूत रहे।",
  //     "आपकी सभी मनोकामनाएं इस भाई दूज पर पूरी हों।",
  //     "भाई दूज का यह पर्व आपके जीवन में खुशियों का संचार करे।",
  //     "भाई दूज पर भाई-बहन के बंधन को सदा बनाए रखें।",
  //     "भाई दूज की हार्दिक शुभकामनाएं! प्रेम और समर्पण से भरा रिश्ता हो।"
  //   ]
  // },

  // {
  //   "name": "Baisakhi",
  //   "description":
  //       "Baisakhi is a harvest festival celebrated in Punjab, marking the beginning of the new harvest season. It is a time for joy, dancing, and community gatherings.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Baisakhi_festival.jpg/640px-Baisakhi_festival.jpg",
  //   "frame": [
  //     '${imgurl}baisakhi1.png',
  //     '${imgurl}baisakhi2.png',
  //     '${imgurl}baisakhi3.png',
  //     '${imgurl}baisakhi4.png',
  //     '${imgurl}baisakhi5.png',
  //   ],
  //   "quotes": [
  //     "बैसाखी की शुभकामनाएं! आपका जीवन खुशियों से भरा रहे।",
  //     "नई फसल की खुशी में सभी मिलकर जश्न मनाएं।",
  //     "बैसाखी का यह त्योहार आपके जीवन में समृद्धि लाए।",
  //     "बैसाखी के इस पावन पर्व पर आपके लिए शुभकामनाएं।",
  //     "बैसाखी की बधाई! खुशियों की बारिश हो।"
  //   ]
  // },
  // {
  //   "name": "Karva Chauth",
  //   "description":
  //       "Karva Chauth is a fasting ritual observed by married women for the well-being and longevity of their husbands. It involves a day of fasting and an evening prayer.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Karwa_Chauth.jpg/640px-Karwa_Chauth.jpg",
  //   "frame": [
  //     '${imgurl}karva_chauth1.png',
  //     '${imgurl}karva_chauth2.png',
  //     '${imgurl}karva_chauth3.png',
  //     '${imgurl}karva_chauth4.png',
  //     '${imgurl}karva_chauth5.png',
  //   ],
  //   "quotes": [
  //     "करवा चौथ की शुभकामनाएं! आपके पति के जीवन में सुख और समृद्धि बनी रहे।",
  //     "इस करवा चौथ पर आपका प्यार और भी बढ़ जाए।",
  //     "करवा चौथ का यह पर्व आपके परिवार को खुशियों से भर दे।",
  //     "आपके सुखद वैवाहिक जीवन की कामना के साथ करवा चौथ की शुभकामनाएं।",
  //     "करवा चौथ का यह पर्व आपके लिए सुख और समृद्धि लाए।"
  //   ]
  // },
  // {
  //   "name": "Buddha Purnima",
  //   "description":
  //       "Buddha Purnima marks the birth, enlightenment, and death of Gautama Buddha. It is celebrated with prayers and offerings.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Buddha_Purnima.jpg/640px-Buddha_Purnima.jpg",
  //   "frame": [
  //     '${imgurl}buddha_purnima1.png',
  //     '${imgurl}buddha_purnima2.png',
  //     '${imgurl}buddha_purnima3.png',
  //     '${imgurl}buddha_purnima4.png',
  //     '${imgurl}buddha_purnima5.png',
  //   ],
  //   "quotes": [
  //     "बुद्ध पूर्णिमा की शुभकामनाएं! आपका जीवन ज्ञान से भरा रहे।",
  //     "भगवान बुद्ध का आशीर्वाद आपके जीवन में शांति लाए।",
  //     "बुद्ध पूर्णिमा का यह पर्व आपके लिए सुख और समृद्धि लाए।",
  //     "ज्ञान और शांति का संदेश फैलाएं।",
  //     "बुद्ध पूर्णिमा की बधाई! आपके जीवन में सकारात्मकता हो।"
  //   ]
  // },
  // {
  //   "name": "Mahashivratri",
  //   "description":
  //       "Mahashivratri is a major Hindu festival dedicated to Lord Shiva, celebrated with fasting, night vigils, and special prayers.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Maha_Shivratri.jpg/640px-Maha_Shivratri.jpg",
  //   "frame": [
  //     '${imgurl}mahashivratri1.png',
  //     '${imgurl}mahashivratri2.png',
  //     '${imgurl}mahashivratri3.png',
  //     '${imgurl}mahashivratri4.png',
  //     '${imgurl}mahashivratri5.png',
  //   ],
  //   "quotes": [
  //     "महाशिवरात्रि की शुभकामनाएं! भगवान शिव का आशीर्वाद आपके जीवन में शांति लाए।",
  //     "इस महाशिवरात्रि पर शिव की कृपा आप पर बनी रहे।",
  //     "भगवान शिव के इस पावन पर्व पर आपके सभी मनोकामनाएं पूरी हों।",
  //     "महाशिवरात्रि का यह पर्व आपके लिए सुख और समृद्धि लाए।",
  //     "शिवरात्रि की बधाई! भगवान शिव की कृपा सदा आप पर बनी रहे।"
  //   ]
  // },

  // {
  //   "name": "Gudi Padwa",
  //   "description":
  //       "Gudi Padwa is the Marathi New Year festival, celebrated with enthusiasm, decorating homes, and preparing traditional dishes.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Gudi_Padwa.jpg/640px-Gudi_Padwa.jpg",
  //   "frame": [
  //     '${imgurl}gudi_padwa1.png',
  //     '${imgurl}gudi_padwa2.png',
  //     '${imgurl}gudi_padwa3.png',
  //     '${imgurl}gudi_padwa4.png',
  //     '${imgurl}gudi_padwa5.png',
  //   ],
  //   "quotes": [
  //     "गुड़ी पड़वा की हार्दिक शुभकामनाएं! नया साल आपके जीवन में खुशियां लाए।",
  //     "गुड़ी पड़वा का यह पर्व आपके परिवार के लिए समृद्धि और शांति लाए।",
  //     "नए वर्ष की शुरुआत में आपके सभी सपने सच हों।",
  //     "गुड़ी पड़वा का यह पर्व आपके लिए खुशियों की बौछार लाए।",
  //     "गुड़ी पड़वा की बधाई! आपके जीवन में नई उमंग और उत्साह रहे।"
  //   ]
  // },
  // {
  //   "name": "Chhath Puja",
  //   "description":
  //       "Chhath Puja is a festival dedicated to the Sun God and is celebrated mainly in Bihar. It involves rigorous fasting and offerings.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Chhath_Puja.jpg/640px-Chhath_Puja.jpg",
  //   "frame": [
  //     '${imgurl}chhath_puja1.png',
  //     '${imgurl}chhath_puja2.png',
  //     '${imgurl}chhath_puja3.png',
  //     '${imgurl}chhath_puja4.png',
  //     '${imgurl}chhath_puja5.png',
  //   ],
  //   "quotes": [
  //     "छठ पूजा की शुभकामनाएं! सूर्य देव की कृपा आपके जीवन में खुशियों की बौछार करे।",
  //     "छठ पूजा के इस पावन अवसर पर आप सभी को बधाई।",
  //     "सूर्य देव को धन्यवाद देने का यह पर्व आपके लिए सुख और समृद्धि लाए।",
  //     "छठ पूजा का यह पर्व आपके लिए आशीर्वाद और खुशियों का संचार करे।",
  //     "छठ पूजा की हार्दिक शुभकामनाएं! आपके परिवार में सुख और समृद्धि बनी रहे।"
  //   ]
  // },
  // {
  //   "name": "Teej",
  //   "description":
  //       "Teej is a festival celebrated by women in North India, marking the arrival of the monsoon. It involves fasting, singing, and dancing.",
  //   "image":
  //       "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Teej.jpg/640px-Teej.jpg",
  //   "frame": [
  //     '${imgurl}teej1.png',
  //     '${imgurl}teej2.png',
  //     '${imgurl}teej3.png',
  //     '${imgurl}teej4.png',
  //     '${imgurl}teej5.png',
  //   ],
  //   "quotes": [
  //     "तीज की शुभकामनाएं! आपके जीवन में खुशियों की बहार हो।",
  //     "तीज का यह पर्व आपके लिए सुख और समृद्धि लाए।",
  //     "तीज के इस पावन अवसर पर आप सभी को बधाई।",
  //     "तीज का यह पर्व आपके जीवन में प्रेम और आनंद लाए।",
  //     "तीज की हार्दिक शुभकामनाएं! आपके सभी सपने सच हों।"
  //   ]
  // },
];
List<AppModels> allFestival = allFestivalData
    .map(
      (e) => AppModels.fromMap(
        data: e,
      ),
    )
    .toList();
