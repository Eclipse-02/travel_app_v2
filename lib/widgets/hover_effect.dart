import 'package:flutter/material.dart';

class HoverEffectWidget extends StatefulWidget {
  final Widget child;
  final Color hoverColor;
  final Color? shadowColor;
  final double borderRadius;

  const HoverEffectWidget({
    super.key,
    required this.child,
    this.hoverColor = Colors.blue,
    this.shadowColor,
    this.borderRadius = 10.0,
  });

  @override
  State<HoverEffectWidget> createState() => _HoverEffectWidgetState();
}

class _HoverEffectWidgetState extends State<HoverEffectWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: _isHovered ? widget.hoverColor : Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: widget.shadowColor ??
                        widget.hoverColor.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: widget.child,
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
