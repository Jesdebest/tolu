part of "./part_learn.dart";

class _appbarbutton extends StatelessWidget implements PreferredSizeWidget  {
  const _appbarbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("aa"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.abc_outlined))
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}