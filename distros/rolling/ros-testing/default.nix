
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-rolling-ros-testing";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/rolling/ros_testing/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "1d7520271a26c66ce74e5c47e102b648abf61513e6bf1f98e1a4c7cc34f4cd40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros ros2test ];
  nativeBuildInputs = [ ament-cmake launch-testing-ament-cmake ros2test ];

  meta = {
    description = ''The entry point package to launch testing in ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
