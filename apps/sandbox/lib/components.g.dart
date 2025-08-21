// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_visible_for_testing_member, unused_import, duplicate_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:test_reporter_sandbox/widgets/cards/diagram_card.stories.dart'
    as _i1;
import 'package:test_reporter_sandbox/widgets/cards/diagram_card.dart' as _i2;
import 'package:flutter/src/painting/decoration_image.dart' as _i3;
import 'package:test_reporter_sandbox/widgets/benefit/frost_benefit.stories.dart'
    as _i4;
import 'package:test_reporter_sandbox/widgets/benefit/frost_benefit.dart'
    as _i5;
import 'package:test_reporter_sandbox/widgets/cards/frost_received_card.stories.dart'
    as _i6;
import 'package:test_reporter_sandbox/widgets/cards/frost_received_card.dart'
    as _i7;
import 'package:test_reporter_sandbox/widgets/profit_cell.stories.dart' as _i8;
import 'package:test_reporter_sandbox/widgets/profit_cell.dart' as _i9;
import 'package:test_reporter_sandbox/widgets/benefit/rating_benefit.stories.dart'
    as _i10;
import 'package:test_reporter_sandbox/widgets/benefit/rating_benefit.dart'
    as _i11;
import 'package:test_reporter_sandbox/widgets/cards/rating_received_card.stories.dart'
    as _i12;
import 'package:test_reporter_sandbox/widgets/cards/rating_received_card.dart'
    as _i13;
import 'package:sandboxed_core/sandboxed_core.dart';
import 'package:flutter/material.dart';

List<Component> get components => <Component>[
  Component(
    meta: _i1.meta,
    stories: [
      _i1.$Default.applyGenerated(
        name: 'Default',
        builder: (context, params) => _i2.DiagramCard.new(
          key: null,
          backgroundImage: params
              .dynamic$<_i3.DecorationImage, void, void>(r'backgroundImage')
              .optional(null),
          backgroundColor: params.color(r'backgroundColor').optional(null),
          value: params.number(r'value').required(0.0),
          label: params.string(r'label').required('Text'),
          color: params.color(r'color').required(Colors.red),
        ),
      ),
    ],
  ),
  Component(
    meta: _i4.meta,
    stories: [
      _i4.$Default.applyGenerated(
        name: 'Default',
        builder: (context, params) => _i5.FrostBenefit.new(key: null),
      ),
    ],
  ),
  Component(
    meta: _i6.meta,
    stories: [
      _i6.$Default.applyGenerated(
        name: 'Default',
        builder: (context, params) => _i7.FrostReceivedCard.new(
          key: null,
          backgroundColor: params.color(r'backgroundColor').optional(null),
        ),
      ),
    ],
  ),
  Component(
    meta: _i8.meta,
    stories: [
      _i8.$Default.applyGenerated(
        name: 'Default',
        builder: (context, params) => _i9.ProfitCell.new(
          key: null,
          text: params.string(r'text').required('Text'),
          color: params.color(r'color').required(Colors.red),
        ),
      ),
      _i8.$Second.applyGenerated(
        name: 'Second',
        builder: (context, params) => _i9.ProfitCell.new(
          key: null,
          text: params.string(r'text').required('Text'),
          color: params.color(r'color').required(Colors.red),
        ),
      ),
    ],
  ),
  Component(
    meta: _i10.meta,
    stories: [
      _i10.$Default.applyGenerated(
        name: 'Default',
        builder: (context, params) => _i11.RatingBenefit.new(key: null),
      ),
    ],
  ),
  Component(
    meta: _i12.meta,
    stories: [
      _i12.$Default.applyGenerated(
        name: 'Default',
        builder: (context, params) => _i13.RatingReceivedCard.new(
          key: null,
          backgroundColor: params.color(r'backgroundColor').optional(null),
        ),
      ),
    ],
  ),
];
