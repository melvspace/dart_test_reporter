import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/profit_cell.dart';
import 'package:sandboxed/sandboxed.dart';

final meta = Meta<ProfitCell>(name: 'ProfitCell');

final $Default = Story(
  builder: (context, params) => ProfitCell(
    color: params.color('color').required(Colors.deepPurple),
    text: params.string('text').required("2 техники по борьбе с тревожкой"),
  ),
);

final $Second = Story(
  builder: (context, params) => ProfitCell(
    color: params.color('color').required(Colors.red),
    text: params.string('text').required("Разнообразный и богатый опыт рамки"),
  ),
);
