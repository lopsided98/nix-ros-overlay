
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp }:
buildRosPackage {
  pname = "ros-dashing-rviz-assimp-vendor";
  version = "6.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_assimp_vendor/6.1.7-2.tar.gz";
    name = "6.1.7-2.tar.gz";
    sha256 = "ded6fbaabaa135e1b936276f8618d73813c8409bf918c44da2041d226976e9dd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
