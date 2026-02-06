
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-junitparser, ament-cmake, ament-cmake-pytest, geometry-msgs, launch, python3Packages, rclpy, ros2bag, ros2run, ros2topic, rosbag2-py, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-jazzy-replay-testing";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/replay_testing-release/archive/release/jazzy/replay_testing/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "100fda20efdd02c3e64d1647dacfe730c40d022c49f725475ead728aec1728d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ _unresolved_python3-junitparser ament-cmake-pytest geometry-msgs python3Packages.pytest ros2run ros2topic ];
  propagatedBuildInputs = [ launch python3Packages.boto3 python3Packages.pydantic python3Packages.requests python3Packages.termcolor rclpy ros2bag rosbag2-py rosbag2-storage-mcap ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A testing library and CLI for replaying ROS nodes.";
    license = with lib.licenses; [ asl20 ];
  };
}
