
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, launch, launch-ros, launch-testing-ament-cmake, schunk-svh-driver }:
buildRosPackage {
  pname = "ros-foxy-schunk-svh-tests";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/foxy/schunk_svh_tests/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "10e1d5c1da8722db8991db13b3e80239517c105f54dbfff12accf4b525e1085e";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager-msgs launch launch-ros launch-testing-ament-cmake schunk-svh-driver ];

  meta = {
    description = ''Integration tests for the Schunk SVH ROS2 driver'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
