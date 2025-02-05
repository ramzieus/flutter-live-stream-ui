// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:phosphor_flutter/phosphor_flutter.dart';

// Project imports:
import 'package:streamskit_mobile/core/app/colors/app_color.dart';
import 'package:streamskit_mobile/core/util/common/touchable_opacity.dart';
import 'package:streamskit_mobile/core/util/sizer_custom/sizer.dart';
import 'package:streamskit_mobile/features/chat/presentation/screens/chat_screen.dart';
import 'package:streamskit_mobile/features/home/presentation/screens/home_screen.dart';
import 'package:streamskit_mobile/features/profile/presentation/screens/profile_screen.dart';
import 'package:streamskit_mobile/features/search/presentation/screens/search_screen.dart';
import 'package:streamskit_mobile/features/stream/presentation/screens/stream_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _tabs = [
    const HomeScreen(),
    const SearchScreen(),
    const StreamScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  int _currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tabs[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 30.sp),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(100.sp),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                  child: Container(
                    padding: EdgeInsets.all(8.sp),
                    margin: EdgeInsets.all(8.sp),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: SizedBox(
                      height: 30.sp,
                      width: 30.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.sp),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  height: 70.sp,
                  color: Colors.black.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildItemBottomBar(
                        inActiveIcon: PhosphorIcons.house(PhosphorIconsStyle.light),
                        activeIcon: PhosphorIcons.house(PhosphorIconsStyle.fill),
                        index: 0,
                      ),
                      _buildItemBottomBar(
                        inActiveIcon: PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.light),
                        activeIcon: PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.fill),
                        index: 1,
                      ),
                      const Expanded(child: SizedBox()),
                      _buildItemBottomBar(
                        inActiveIcon: PhosphorIcons.chatTeardropDots(PhosphorIconsStyle.light),
                        activeIcon: PhosphorIcons.chatTeardropDots(PhosphorIconsStyle.fill),
                        index: 3,
                      ),
                      _buildItemBottomBar(
                        inActiveIcon: PhosphorIcons.userCircle(PhosphorIconsStyle.light),
                        activeIcon: PhosphorIcons.userCircle(PhosphorIconsStyle.fill),
                        index: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TouchableOpacity(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(13.sp),
                margin: EdgeInsets.only(bottom: 38.sp),
                decoration: BoxDecoration(
                  color: colorPink,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  PhosphorIcons.plus(PhosphorIconsStyle.bold),
                  size: 20.sp,
                  color: mCL,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemBottomBar({
    required IconData inActiveIcon,
    required IconData activeIcon,
    required int index,
  }) {
    return Expanded(
      child: TouchableOpacity(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: Icon(
                  index == _currentIndex ? activeIcon : inActiveIcon,
                  size: 21.sp,
                  color: index == _currentIndex ? mCL : fCL,
                ),
              ),
              SizedBox(height: 4.sp),
              Container(
                height: 3.sp,
                width: 3.sp,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == _currentIndex ? mCH : Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
