
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, assimp }:
buildRosPackage {
  pname = "ros-humble-rviz-assimp-vendor";
  version = "11.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_assimp_vendor/11.2.13-1.tar.gz";
    name = "11.2.13-1.tar.gz";
    sha256 = "9b83f04d7e6549124285b74996f264b766de2de83840b70e43199f3912cf463a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
