// Mocks generated by Mockito 5.3.0 from annotations
// in streamskit_mobile/test/features/home/domain/usecases/get_list_live_stream_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:streamskit_mobile/core/error/failure.dart' as _i4;
import 'package:streamskit_mobile/features/home/data/model/live_stream_model.dart'
    as _i5;
import 'package:streamskit_mobile/features/home/domain/repositories/live_stream_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LiveStreamRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLiveStreamRepository extends _i1.Mock
    implements _i3.LiveStreamRepository {
  @override
  _i2.Either<_i4.Failure, List<_i5.LiveStreamModel>> getLiveStreams() =>
      (super.noSuchMethod(
        Invocation.method(
          #getLiveStreams,
          [],
        ),
        returnValue: _FakeEither_0<_i4.Failure, List<_i5.LiveStreamModel>>(
          this,
          Invocation.method(
            #getLiveStreams,
            [],
          ),
        ),
        returnValueForMissingStub:
            _FakeEither_0<_i4.Failure, List<_i5.LiveStreamModel>>(
          this,
          Invocation.method(
            #getLiveStreams,
            [],
          ),
        ),
      ) as _i2.Either<_i4.Failure, List<_i5.LiveStreamModel>>);
}
