
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-galactic-rcss3d-agent";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/galactic/rcss3d_agent/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "2e259621ca9bed24e18deba8f487803d52048ace76d469e848e355a5286ec0fa";
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
