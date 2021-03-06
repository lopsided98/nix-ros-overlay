
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp }:
buildRosPackage {
  pname = "ros-foxy-rviz-assimp-vendor";
  version = "8.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_assimp_vendor/8.2.2-1.tar.gz";
    name = "8.2.2-1.tar.gz";
    sha256 = "63df880de10fcf407c395b0dd2ad0bf38cf160c3e370230aa8e6891b49fc835c";
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
