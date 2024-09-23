import 'package:festival_post_app/models/app_models.dart';
import 'package:festival_post_app/utils/my_fonts.dart';
import 'package:festival_post_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quotesCounter = 16;
  int festivalNameCounter = 18;

  Color quotesFontColor = Colors.white;
  Color festivalFontColor = Colors.white;
  Color bgColor = Colors.blue;

  String bgImage = '';
  String display_quote = '';

  String quotesFont = MyFonts.Poppins.name;
  String festivalFonts = MyFonts.PTSerif.name;

  Offset quotePosition = const Offset(50, 50);
  Offset festiveNamePosition = const Offset(160, 200);

  bool showColorPicker = false;
  bool showImage = false;
  bool showQuote = false;
  bool showFont = false;
  bool showTextEditing = false;

  bool showHindiQuotes = true;
  bool showEnglishQuotes = false;

  bool isQBold = false;
  bool isQItalic = false;

  bool isFBold = false;
  bool isFItalic = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    AppModels festive = ModalRoute.of(context)!.settings.arguments as AppModels;
    List<String> img = festive.frame.toList();
    List<String> quote = festive.quotes.toList();
    List<String> english_quote = festive.english_quotes.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Save',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Settings saved!'),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset',
            onPressed: () {
              setState(() {
                quotesCounter = 16;
                festivalNameCounter = 16;
                isQBold = false;
                isQItalic = false;
                isFBold = false;
                isFItalic = false;
                quotesFont = "DefaultFont";
                festivalFonts = "DefaultFont";
                bgImage = '';
                bgColor = Colors.blue;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings reset to defaults!')),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.40,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(16),
                      image: bgImage.isNotEmpty
                          ? DecorationImage(
                              image: AssetImage(bgImage),
                              fit: BoxFit.fill,
                            )
                          : DecorationImage(
                              image: AssetImage(bgImage), fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                    left: festiveNamePosition.dx,
                    top: festiveNamePosition.dy,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          festiveNamePosition = Offset(
                            festiveNamePosition.dx + details.delta.dx,
                            festiveNamePosition.dy + details.delta.dy,
                          );
                        });
                      },
                      child: Text(
                        "Happy ${festive.name}",
                        style: TextStyle(
                          fontFamily: festivalFonts,
                          color: festivalFontColor,
                          fontSize: festivalNameCounter.toDouble(),
                          fontWeight:
                              isFBold ? FontWeight.bold : FontWeight.normal,
                          fontStyle:
                              isFItalic ? FontStyle.italic : FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: quotePosition.dx,
                    top: quotePosition.dy,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          quotePosition = Offset(
                            quotePosition.dx + details.delta.dx,
                            quotePosition.dy + details.delta.dy,
                          );
                        });
                      },
                      child: SizedBox(
                        width: size.width * 0.80,
                        child: Text(
                          display_quote,
                          style: TextStyle(
                            fontFamily: quotesFont,
                            color: quotesFontColor,
                            fontSize: quotesCounter.toDouble(),
                            fontWeight:
                                isQBold ? FontWeight.bold : FontWeight.normal,
                            fontStyle:
                                isQItalic ? FontStyle.italic : FontStyle.normal,
                          ),
                          maxLines: null,
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        elevation: 5, // Shadow effect
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          showColorPicker = !showColorPicker;
                          showImage = false;
                          showQuote = false;
                          showFont = false;
                          showTextEditing = false;
                        });
                      },
                      child: const Text("Color"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          showImage = !showImage;
                          showColorPicker = false;
                          showQuote = false;
                          showFont = false;
                          showTextEditing = false;
                        });
                      },
                      child: const Text("Image"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          showQuote = !showQuote;
                          showColorPicker = false;
                          showImage = false;
                          showFont = false;
                          showTextEditing = false;
                        });
                      },
                      child: const Text("Quotes"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          showFont = !showFont;
                          showColorPicker = false;
                          showImage = false;
                          showQuote = false;
                          showTextEditing = false;
                        });
                      },
                      child: const Text("Font"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          showTextEditing = !showTextEditing;
                          showColorPicker = false;
                          showImage = false;
                          showQuote = false;
                          showFont = false;
                        });
                      },
                      child: const Text("Text Edit"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              if (showColorPicker)
                Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        Color? pickedColor;
                        pickedColor = await showDialog<Color>(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Pick a Color'),
                              content: SingleChildScrollView(
                                child: MaterialColorPicker(
                                  onColorChange: (color) {
                                    pickedColor = color;
                                  },
                                  selectedColor: bgColor,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('Select'),
                                  onPressed: () {
                                    Navigator.of(context).pop(pickedColor);
                                  },
                                ),
                              ],
                            );
                          },
                        );

                        if (pickedColor != null) {
                          setState(() {
                            bgColor = pickedColor!;
                          });
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black54),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Pick Background Color",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        Color? pickedColor;
                        pickedColor = await showDialog<Color>(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Pick a Color'),
                              content: SingleChildScrollView(
                                child: MaterialColorPicker(
                                  onColorChange: (color) {
                                    pickedColor = color;
                                  },
                                  selectedColor: quotesFontColor,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('Select'),
                                  onPressed: () {
                                    Navigator.of(context).pop(pickedColor);
                                  },
                                ),
                              ],
                            );
                          },
                        );

                        if (pickedColor != null) {
                          setState(() {
                            quotesFontColor = pickedColor!;
                          });
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: quotesFontColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black54),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Pick Quotes Font Color",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        Color? pickedColor;
                        pickedColor = await showDialog<Color>(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Pick a Color'),
                              content: SingleChildScrollView(
                                child: MaterialColorPicker(
                                  onColorChange: (color) {
                                    pickedColor = color;
                                  },
                                  selectedColor: festivalFontColor,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('Select'),
                                  onPressed: () {
                                    Navigator.of(context).pop(pickedColor);
                                  },
                                ),
                              ],
                            );
                          },
                        );

                        if (pickedColor != null) {
                          setState(() {
                            festivalFontColor = pickedColor!;
                          });
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: festivalFontColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black54),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Pick Festival Font Color",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 15),
              if (showImage)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            bgImage = '';
                          });
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 8,
                                spreadRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'No Image',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ...img
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  bgImage = e;
                                });
                              },
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.grey[300],
                                  image: DecorationImage(
                                    image: AssetImage(e),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.4),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Image',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              const SizedBox(height: 15),
              if (showQuote) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showHindiQuotes = true;
                          showEnglishQuotes = false;
                        });
                      },
                      child: const Text('Show Hindi Quotes'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showHindiQuotes = false;
                          showEnglishQuotes = true;
                        });
                      },
                      child: const Text('Show English Quotes'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                if (showHindiQuotes)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: quote.map((e) {
                        return GestureDetector(
                          onTap: () {
                            display_quote = e;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 200,
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                e,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontStyle: FontStyle.italic,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                if (showEnglishQuotes)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: festive.english_quotes.map((e) {
                        return GestureDetector(
                          onTap: () {
                            display_quote = e;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            width: 200,
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                e,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontStyle: FontStyle.italic,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
              ],
              const SizedBox(height: 15),
              if (showFont)
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: MyFonts.values
                            .map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.blueAccent, width: 2),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      quotesFont = e.name;
                                      setState(() {});
                                    },
                                    child: Text(
                                      "Abc",
                                      style: TextStyle(
                                        fontFamily: e.name,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: MyFonts.values
                            .map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purpleAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.purpleAccent, width: 2),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        festivalFonts = e.name;
                                      });
                                    },
                                    child: Text(
                                      "Abc",
                                      style: TextStyle(
                                        fontFamily: e.name,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 15),
              if (showTextEditing)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Quotes Font",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (quotesCounter > 10) quotesCounter--;
                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),
                          Text("$quotesCounter"),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (quotesCounter < 50) quotesCounter++;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isQBold = !isQBold;
                              });
                            },
                            child: Text(isQBold ? "Bold On" : "Bold Off"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isQItalic = !isQItalic;
                              });
                            },
                            child: Text(isQItalic ? "Italic On" : "Italic Off"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Quote Font Preview",
                            style: TextStyle(
                              fontFamily: quotesFont,
                              fontSize: quotesCounter.toDouble(),
                              fontWeight:
                                  isQBold ? FontWeight.bold : FontWeight.normal,
                              fontStyle: isQItalic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              color: Colors.black87,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                quotesFont = "DefaultFont";
                                quotesCounter = 16;
                              });
                            },
                            icon: const Icon(Icons.refresh),
                            tooltip: "Reset Quotes Font",
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Festival Font",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (festivalNameCounter > 10)
                                  festivalNameCounter--;
                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),
                          Text("$festivalNameCounter"),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (festivalNameCounter < 50)
                                  festivalNameCounter++;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isFBold = !isFBold;
                              });
                            },
                            child: Text(isFBold ? "Bold On" : "Bold Off"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isFItalic = !isFItalic;
                              });
                            },
                            child: Text(isFItalic ? "Italic On" : "Italic Off"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Festival Font Preview",
                            style: TextStyle(
                              fontFamily: festivalFonts,
                              fontSize: festivalNameCounter.toDouble(),
                              fontStyle: isFItalic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              fontWeight:
                                  isFBold ? FontWeight.bold : FontWeight.normal,
                              color: Colors.black87,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                festivalFonts = "DefaultFont";
                                festivalNameCounter = 16;
                              });
                            },
                            icon: const Icon(Icons.refresh),
                            tooltip: "Reset Festival Font",
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
