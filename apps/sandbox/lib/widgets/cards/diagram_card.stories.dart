import 'package:flutter/widgets.dart';
import 'package:sandboxed/sandboxed.dart';
import 'package:test_reporter_sandbox/widgets/cards/diagram_card.dart';

final meta = Meta<DiagramCard>(name: 'DiagramCard');

final $Default = Story(
  builder: (context, params) => DiagramCard(
    backgroundColor: params.color('backgroundColor').optional(),
    value: params.number('value').required(.75),
    label: params.string('label').required('right answers'),
    color: params.color('color').required(Color(0xFFE5A500)),
  ),
);
