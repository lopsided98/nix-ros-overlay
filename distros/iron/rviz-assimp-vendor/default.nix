
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, assimp }:
buildRosPackage {
  pname = "ros-iron-rviz-assimp-vendor";
  version = "12.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_assimp_vendor/12.4.8-1.tar.gz";
    name = "12.4.8-1.tar.gz";
    sha256 = "c2b3eacc3d51dbad7850298f017b892f59175fd78b1b28a32528874dd06bc826";
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
