
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp }:
buildRosPackage {
  pname = "ros-foxy-rviz-assimp-vendor";
  version = "8.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_assimp_vendor/8.2.7-1.tar.gz";
    name = "8.2.7-1.tar.gz";
    sha256 = "06d09052b18a8222d98178030bcaf605af6ace29bf1eeae9fc22bf4497b9e969";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
