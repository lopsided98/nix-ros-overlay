
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, assimp }:
buildRosPackage {
  pname = "ros-iron-rviz-assimp-vendor";
  version = "12.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_assimp_vendor/12.4.7-1.tar.gz";
    name = "12.4.7-1.tar.gz";
    sha256 = "b5d2f8c40d21e28a7a53bd53696494f722accda9708dc6c46e76127cb5be70fc";
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
