import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class StickyHeaderSample extends StatelessWidget {
  const StickyHeaderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _Item(
          text: "List Example",
          builder: (_) => const ListExample(),
        ),
        _Item(
          text: "Grid Example",
          builder: (_) => const GridExample(),
        ),
        _Item(
          text: "Not Sticky Example",
          builder: (_) => const NotStickyExample(),
        ),
        _Item(
          text: "Side Header Example",
          builder: (_) => const SideHeaderExample(),
        ),
        _Item(
          text: "Animated Header Example",
          builder: (_) => const AnimatedHeaderExample(),
        ),
        _Item(
          text: "Reverse List Example",
          builder: (_) => const ReverseExample(),
        ),
        _Item(
          text: "Mixing other slivers",
          builder: (_) => const MixSliversExample(),
        ),
      ]
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({Key? key, required this.text, required this.builder}) : super(key: key);

  final String text;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: builder)),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}

//----------------------------------------------

class ListExample extends StatelessWidget {
  const ListExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
        title: "List Example",
        slivers: [
          _StickyHeaderList(index: 0),
          _StickyHeaderList(index: 1),
          _StickyHeaderList(index: 2),
          _StickyHeaderList(index: 3),
        ]
    );
  }
}

class _StickyHeaderList extends StatelessWidget {
  const _StickyHeaderList({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return  SliverStickyHeader(
      header: Header(index: index),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("List tile #$i"),
          ),
          childCount: 6,
        ),
      ),
    );
  }
}

//----------------------------------------------

class GridExample extends StatelessWidget {
  const GridExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: "Grid Sample",
      slivers: [
        _StickyHeaderGrid(index: 0),
        _StickyHeaderGrid(index: 1),
        _StickyHeaderGrid(index: 2),
        _StickyHeaderGrid(index: 3),
      ],
    );
  }
}

class _StickyHeaderGrid extends StatelessWidget {
  const _StickyHeaderGrid({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(index: index),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0
        ),
        delegate: SliverChildBuilderDelegate(
          (context, i) => GridTile(
            child: Card(
              child: Container(
                color: Colors.green,
              ),
            ),
            footer: Container(
              color: Colors.white.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Grid tile #$i",
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          childCount: 9,
        ),
      ),
    );
  }
}

//----------------------------------------------

class NotStickyExample extends StatelessWidget {
  const NotStickyExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: "Not Sticky Example",
      slivers: [
        _NotStickyList(index: 0),
        _NotStickyList(index: 1),
        _NotStickyList(index: 2),
        _NotStickyList(index: 3),
      ]
    );
  }
}

class _NotStickyList extends StatelessWidget {
  const _NotStickyList({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(index: index),
      sticky: false,
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("List tile #$i"),
          ),
          childCount: 6,
        ),
      ),
    );
  }
}

//----------------------------------------------

class SideHeaderExample extends StatelessWidget {
  const SideHeaderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: "Side Header Example",
      slivers: [
        _StickyHeaderGrid2(index: 0),
        _StickyHeaderGrid2(index: 1),
        _StickyHeaderGrid2(index: 2),
        _StickyHeaderGrid2(index: 3),
      ]
    );
  }
}
class _StickyHeaderGrid2 extends StatelessWidget {
  const _StickyHeaderGrid2({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      overlapsContent: true,
      header: _SideHeader(index: index),
      sliver: SliverPadding(
        padding: const EdgeInsets.only(left: 60),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, i) => GridTile(
              child: Card(
                child: Container(
                  color: Colors.green,
                ),
              ),
              footer: Container(
                color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Grid tile #$i",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            childCount: 9, 
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
        ),
      ),
    );
  }
}

class _SideHeader extends StatelessWidget {
  const _SideHeader({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 44.0,
          width: 44.0,
          child: CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            foregroundColor: Colors.white,
            child: Text("$index"),
          )
        ),
      ),
    );
  }
}

//----------------------------------------------

class AnimatedHeaderExample extends StatelessWidget {
  const AnimatedHeaderExample({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: "Animated header Example",
      slivers: [
        _StickyHeaderList3(index: 0),
        _StickyHeaderList3(index: 1),
        _StickyHeaderList3(index: 2),
        _StickyHeaderList3(index: 3),
      ],
    );
  }
}

class _StickyHeaderList3 extends StatelessWidget {
  const _StickyHeaderList3({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader.builder(
      builder: (context, state) => _AnimatedHeader(
        state: state,
        index: index,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("List tile #$i"),
          ),
          childCount: 6,
        ),
      ),
    );
  }
}

class _AnimatedHeader extends StatelessWidget {
  const _AnimatedHeader({Key? key, this.index, this.state}) : super(key: key);

  final int? index;
  final SliverStickyHeaderState? state;

  @override
  Widget build(BuildContext context) {
    return Header(
      index: index,
      color: Colors.lightBlue.withOpacity(1 - state!.scrollPercentage),
    );
  }
}

//----------------------------------------------

class ReverseExample extends StatelessWidget {
  const ReverseExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      reverse: true,
      title: "ReverseExample",
      slivers: [
        _StickyHeaderList4(index: 0),
        _StickyHeaderList4(index: 1),
        _StickyHeaderList4(index: 2),
        _StickyHeaderList4(index: 3),
      ],
    );
  }
}

class _StickyHeaderList4 extends StatelessWidget {
  const _StickyHeaderList4({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(index: index),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("List tile #$i"),
          ),
          childCount: 6,
        ),
      ),
    );
  }
}

//----------------------------------------------

class MixSliversExample extends StatelessWidget {
  const MixSliversExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "List Example",
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.orange,
          title: Text("SliverAppBar"),
          automaticallyImplyLeading: false,
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 50,
            color: Colors.red,
          ),
        ),
        const _StickyHeaderList5(index: 0),
        const _StickyHeaderList5(index: 1),
        const _StickyHeaderList5(index: 2),
        const _StickyHeaderList5(index: 3),
      ],
    );
  }
}

class _StickyHeaderList5 extends StatelessWidget {
  const _StickyHeaderList5({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(index: index),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("List tile #$i"),
          ),
          childCount: 6,
        ),
      )
    );
  }
}


//----------------------------------------------
//----------------------------------------------

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.title,
    required this.slivers,
    this.reverse = false,
  }) : super(key: key);

  final String title;
  final List<Widget> slivers;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return DefaultStickyHeaderController(
      child: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: CustomScrollView(
          slivers: slivers,
          reverse: reverse,
        ),
        floatingActionButton: const _FloatingActionButton(),
      )
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.adjust),
      onPressed: () {
        final double offset = DefaultStickyHeaderController.of(context)!.stickyHeaderScrollOffset;
        PrimaryScrollController.of(context)!.animateTo(
          offset, duration: const Duration(milliseconds: 300), curve: Curves.easeIn,
        );
      },
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.index,
    this.title,
    this.color = Colors.lightBlue,
  }) : super(key: key);

  final String? title;
  final int? index;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title ?? "Header #$index",
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}