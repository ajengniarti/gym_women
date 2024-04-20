import 'package:app_gym/resources/color_manager.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.10,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Image(
                  width: MediaQuery.of(context).size.width * 0.5,
                  image: const AssetImage('assets/images/logodp.png'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTopSection(),
              buildMiddleSection(),
              buildBottomSection(context),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }

  buildTopSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '',
              // 'Profil',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: NetworkImage(
                                "https://pbs.twimg.com/media/EWu-qxFWAAAsPRv.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Ajeng',
                  // widget.userModel.name!,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.blue, // background
                      foregroundColor: Colors.white, // foreground
                    ),
                    child: const Text('Edit Profil'),
                    onPressed: () async {
                      // print(widget.userModel.photo);
                      // CommonWidget().movePage(
                      //     context,
                      //     EditProfile(
                      //       userModel: widget.userModel,
                      //     ));
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.blue, // background
                      foregroundColor: Colors.white, // foreground
                    ),
                    child: const Text('Edit Password'),
                    onPressed: () async {
                      // CommonWidget().movePage(context, EditPassword());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  buildMiddleSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Aktifitas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {
              // CommonWidget().movePage(context, DaftarTransaksi());
            },
            leading: Icon(
              // FontAwesomeIcons.cartShopping,
              Icons.shape_line,
              color: ColorManager.primary,
            ),
            title: const Text("Transaksi"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.primary,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              //CommonWidget().movePage(context, Panduan());
            },
            leading: Icon(
              // FontAwesomeIcons.gift,
              Icons.gif,
              color: ColorManager.primary,
            ),
            title: const Text("Tukar Voucher"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.primary,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Tentang',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {
              // CommonWidget().movePage(context, TentangBb());
            },
            leading: Icon(
              Icons.info,
              color: ColorManager.primary,
            ),
            title: const Text("Tentang Bumi Baik"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.primary,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              // CommonWidget().movePage(context, Panduan());
            },
            leading: Icon(
              Icons.list_alt,
              color: ColorManager.primary,
            ),
            title: const Text("Panduan"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.primary,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              // CommonWidget().movePage(context, PusatBantuan());
            },
            leading: Icon(
              Icons.help_center,
              color: ColorManager.primary,
            ),
            title: const Text("Pusat Bantuan"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.primary,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  buildBottomSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                // CommonMethod()
                //     .saveUserLoginsDetails(0, "", "", "", "", false, "");

                // Navigator.of(context, rootNavigator: true).pop();

                // PersistentNavBarNavigator.pushNewScreen(
                //   context,
                //   screen: Login(),
                //   withNavBar: false, // OPTIONAL VALUE. True by default.
                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.red, // background
                foregroundColor: Colors.white, // foreground
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.logout),
                  const Text("Keluar"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
