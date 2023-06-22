import 'package:chess_game/components/chess_piece.dart';
import 'package:chess_game/util/palette.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  final void Function()? onTap;

  const SquareTile({
    super.key,
    required this.isWhite,
    required this.piece,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color? squareColor;
    if (isSelected) {
      squareColor = Colors.green;
    } else {
      squareColor = isWhite ? foregroundColor : backgroundColor;
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: squareColor,
        ),
        child: piece != null
            ? Image.asset(piece!.imagePath,
                color: piece!.isWhite ? Colors.white : Colors.black)
            : null,
      ),
    );
  }
}
