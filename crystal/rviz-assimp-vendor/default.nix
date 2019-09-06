
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp }:
buildRosPackage {
  pname = "ros-crystal-rviz-assimp-vendor";
  version = "5.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_assimp_vendor/5.1.0-0.tar.gz";
    name = "5.1.0-0.tar.gz";
    sha256 = "b571fec410ffc054065ebb16be64e2ef2e6b50b62c9a3fe4656ffde67750a8e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ assimp ];
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
