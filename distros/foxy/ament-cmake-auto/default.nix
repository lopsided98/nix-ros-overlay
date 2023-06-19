
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-auto";
  version = "0.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_auto/0.9.12-1.tar.gz";
    name = "0.9.12-1.tar.gz";
    sha256 = "092f1db7588518fa4c31f2e314e3567a20a3f0971b81296f2de471aa59afca57";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
