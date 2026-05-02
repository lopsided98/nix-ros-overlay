
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "da95f92958ea8cfd40f99d6aa48f50ac614320d202386e3e75d50ce4a3a33b04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcss3d-agent-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Launches a RoboCup 3D Simulation Agent, and converts data to and from ROS2 msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
