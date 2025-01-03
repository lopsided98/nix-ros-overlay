
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-humble-rcss3d-agent";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/humble/rcss3d_agent/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "93ceed238e096c119a9add64726488f5494a156172fa081571bf784348a92aae";
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
