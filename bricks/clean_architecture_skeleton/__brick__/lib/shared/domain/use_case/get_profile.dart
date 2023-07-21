import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/di/service_locator.dart';
import '../../../core/failures/failures.dart';
import '../../../core/use_case/use_case.dart';
import '../entities/profile.dart';
import '../repositories/profile_repository.dart';

@LazySingleton()
class GetProfile implements UseCase<Profile, NoParams, ProfileRepository> {
  GetProfile();

  @override
  Future<Either<Failure, Profile>> call(NoParams param) => repo.getProfile();

  @override
  ProfileRepository get repo => getIt<ProfileRepository>();
}
