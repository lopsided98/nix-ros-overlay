
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, launch-testing, launch-testing-ament-cmake, ros2test, launch-testing-ros, ament-cmake-export-dependencies }:
buildRosPackage {
  pname = "ros-dashing-ros-testing";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/dashing/ros_testing/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "e237566717154a53547fad6b1abfbd6303363bf0b1aac82545b7b5b82913862c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ament-cmake-core ];
  propagatedBuildInputs = [ launch-testing launch-testing-ament-cmake ros2test launch-testing-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The entry point package to launch testing in ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
