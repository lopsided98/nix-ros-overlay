
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5a92982d39a6b5adf5fdc0ea1032a0068f78af403a1e45790f10e452c3bd1177";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcss3d-agent-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Launches a RoboCup 3D Simulation Agent, and converts data to and from ROS2 msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
