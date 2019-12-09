
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-rviz-assimp-vendor";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_assimp_vendor/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "21ef967c27df3eb278ad17c46848b60880d364bc260005c43cb71ee77791c74b";
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
