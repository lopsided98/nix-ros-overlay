
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-rviz-assimp-vendor";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_assimp_vendor/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "a82670407cdd0d6e862f9f2176cf49d397ae23fb871656ef0f9b759587f334f5";
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
