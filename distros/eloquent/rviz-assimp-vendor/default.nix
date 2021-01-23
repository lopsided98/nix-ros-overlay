
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp }:
buildRosPackage {
  pname = "ros-eloquent-rviz-assimp-vendor";
  version = "7.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_assimp_vendor/7.0.7-1.tar.gz";
    name = "7.0.7-1.tar.gz";
    sha256 = "4cada0f5fcc62d546817291178519cc9641d0f610c1e8223f6f1c4188436c86f";
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
