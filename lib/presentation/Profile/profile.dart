import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/presentation/Profile/widget/editbutton.dart';
import 'package:salhurry/presentation/Profile/widget/upperbgsection.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              WidgetProfileUpperSection(height: height),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileName(),
                    khbox10,
                    _buildAboutSection(context),
                    khbox20,
                    _buildJobPreference(),
                    khbox20,
                    _buildTopSkillsSection(),
                    khbox20,
                    _buildEducationSection(),
                    khbox10,
                    _buildPortfolioLink(),
                    khbox20,
                    _buildInterestedWorkTimeSection(tileCount: 3),
                    khbox10,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileName() {
    return Center(
      child: Text(
        "Kasi",
        style: GoogleFonts.sanchez(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader("About"),
        khbox5,
        const Text(
          "Versatile professional seeking part-time opportunities. Proficient in various domains, with a keen eye for detail and efficiency.",
        ),
        khbox20,
        const WidgetProfileEditButton(),
      ],
    );
  }

  Widget _buildJobPreference() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.green.withOpacity(0.2),
      child: const Text(
        'Looking for work as : Data analyst, Datascientist, Tester',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTopSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader('Top Skills'),
        khbox10,
        _buildSkillChips(tileCount: 5),
      ],
    );
  }

  Widget _buildSkillChips({required int tileCount}) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: List.generate(tileCount + 1, (index) {
        if (index == tileCount) {
          return _buildActionTile("button", Colors.red);
        }
        return _buildSkillTile("Skill $index");
      }),
    );
  }

  Widget _buildSkillTile(String skill) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey, width: 1.0),
      ),
      child: Text(skill),
    );
  }

  Widget _buildActionTile(String label, Color color) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey, width: 1.0),
        color: color,
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildEducationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader('Education'),
        khbox10,
        const Text(
          'Heera college of engineering kalliiyod B-tech computer science',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildPortfolioLink() {
    return InkWell(
      onTap: () {
        // Open portfolio link in browser
      },
      child: const Row(
        children: [
          Text(
            'www.tomysportfolio.in',
            style: TextStyle(color: Colors.blue),
          ),
          Icon(Icons.link)
        ],
      ),
    );
  }

  Widget _buildInterestedWorkTimeSection({required int tileCount}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader('Interested work time'),
        khbox10,
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: List.generate(tileCount + 1, (index) {
            if (index == tileCount) {
              return _buildActionTile("btnwt", Colors.red);
            }
            return _buildSkillTile("intrst $index");
          }),
        ),
      ],
    );
  }

  static Widget _sectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
