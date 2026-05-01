
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcss3d-agent-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rcss3d-agent";
  version = "0.4.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/lyrical/rcss3d_agent/0.4.1-5.tar.gz";
    name = "0.4.1-5.tar.gz";
    sha256 = "e47d588a6953a2743940cb47ab044b27bd906741b2e871b109be61bbe53b63c6";
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
