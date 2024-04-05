
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-version";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_version/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "02624eaa0fa9b5e98253e461ab495aba0e3113e7bd09ce2aea8a5a9bf82c2dca";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to override the exported package version in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
