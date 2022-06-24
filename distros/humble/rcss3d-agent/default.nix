
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-humble-rcss3d-agent";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/humble/rcss3d_agent/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "f2063b08e9c3c6da6a947f1a0e0959920d17a744bc5465e2b3aba79789627b9d";
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
