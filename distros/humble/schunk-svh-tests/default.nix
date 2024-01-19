
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, launch, launch-ros, launch-testing-ament-cmake, schunk-svh-driver }:
buildRosPackage {
  pname = "ros-humble-schunk-svh-tests";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/humble/schunk_svh_tests/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "f72b82d10d52e0bff4f0886a9058604463c1a92d71917152c9041cd5a3b2fd09";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager-msgs launch launch-ros launch-testing-ament-cmake schunk-svh-driver ];

  meta = {
    description = ''Integration tests for the Schunk SVH ROS2 driver'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
