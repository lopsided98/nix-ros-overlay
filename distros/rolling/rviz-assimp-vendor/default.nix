
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, assimp }:
buildRosPackage {
  pname = "ros-rolling-rviz-assimp-vendor";
  version = "15.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_assimp_vendor/15.1.4-1.tar.gz";
    name = "15.1.4-1.tar.gz";
    sha256 = "824b8a2c038be9f8b93ce318a4d8e6ffa70de650d7dd46730399977bdc3f634b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
