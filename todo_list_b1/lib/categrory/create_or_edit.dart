import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreateOrEdit extends StatefulWidget {
  const CreateOrEdit({super.key});

  @override
  State<CreateOrEdit> createState() => _CreateOrEditState();
}

class _CreateOrEditState extends State<CreateOrEdit> {
  final _nameCategroryTextController = TextEditingController();
  final List<Color> _colorDataSource = [];
  Color? colorSelected;
  @override
  void initState() {
    super.initState();
    _colorDataSource.addAll([
      const Color(0xFFC9CC41),
      const Color(0xFF66CC41),
      const Color(0xFF41CCA7),
      const Color(0xFF4181CC),
      const Color(0xFF41A2CC),
      const Color(0xFFCC8441),
      const Color(0xFFCC2241),
      const Color.fromARGB(255, 155, 5, 70),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Create Categrory Tile",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: _buildBodyPageScreen(),
    );
  }

  Widget _buildBodyPageScreen() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCategroryNamefield(),
                _buildChooseIconField(),
                _buildChooseBackgroundColor(),
              ],
            ),
          ),
          buildCreateAndCancel(),
        ],
      ),
    );
  }

  Widget _buildCategroryNamefield() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContextName("Categrory Name:"),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _nameCategroryTextController,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  hintText: "Categrory Name",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFAFAFAF),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                          width: 1, color: Color(0xFF979797)))),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildChooseIconField() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContextName("Categrory Icon:"),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFFFFFFFF).withOpacity(0.21)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Text(
                  "Choose icon from library",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildChooseBackgroundColor() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContextName("Categrory Colors:"),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 36,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final color = _colorDataSource.elementAt(index);
                final isSelected = colorSelected == color;
                return GestureDetector(
                  onTap: () {
                    print("ban da chon item ${index}");
                    setState(() {
                      colorSelected = color;
                    });
                  },
                  child: Container(
                    width: 36,
                    height: 36,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36 / 2),
                        color: color),
                    child: isSelected
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          )
                        : null,
                  ),
                );
              },
              itemCount: _colorDataSource.length,
            ), //hien thi danh sach theo chieu ngang or doc
          ),
        ],
      ),
    );
  }

  Widget _buildContextName(String detailName) {
    return Text(
      detailName,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }

  Widget buildCreateAndCancel() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 20),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "CANCEL",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.44),
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: _onHandleCreateCategrory,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              "CREATE",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onHandleCreateCategrory() {
    final categoryName = _nameCategroryTextController.text; //luu ten
    print(categoryName);
  }
}
