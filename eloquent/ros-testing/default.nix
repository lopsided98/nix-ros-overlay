
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, ros2test, launch-testing, ament-cmake, ament-cmake-export-dependencies, launch-testing-ament-cmake, ament-cmake-core }:
buildRosPackage {
  pname = "ros-eloquent-ros-testing";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/eloquent/ros_testing/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c0b0642a8359f6dcd4c36e05381165b79408a639d8621c482b8c09d98f9f3c4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ launch-testing-ros launch-testing launch-testing-ament-cmake ros2test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The entry point package to launch testing in ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
