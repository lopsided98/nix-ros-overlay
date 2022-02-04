
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-galactic-rcss3d-agent";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-sports/rcss3d_agent-release/archive/release/galactic/rcss3d_agent/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "aa978f222139cb2c0ea56ef626131ae5167f0dec8e1f18643a240b03c1ad38d4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcss3d-agent-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Launches a RoboCup 3D Simulation Agent, and converts data to and from ROS2 msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
