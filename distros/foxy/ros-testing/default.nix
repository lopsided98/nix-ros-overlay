
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-foxy-ros-testing";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/foxy/ros_testing/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "1783e0898dfce13a9f07a4e96cba894d42770f15b1b95fb89221ee140d0b8190";
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
