
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-rviz-assimp-vendor";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_assimp_vendor/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "bef6ef376ec311217587e2e2425017aeab909546ff20ab940504bae973f24f76";
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
