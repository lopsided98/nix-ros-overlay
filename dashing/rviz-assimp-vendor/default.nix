
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp }:
buildRosPackage {
  pname = "ros-dashing-rviz-assimp-vendor";
  version = "6.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_assimp_vendor/6.1.3-1.tar.gz";
    name = "6.1.3-1.tar.gz";
    sha256 = "7c923a03a7192c98fbe5dbe488c06fe00a0f214c102780f5aba676b5e60aec08";
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
