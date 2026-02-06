
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-junitparser, ament-cmake, ament-cmake-pytest, geometry-msgs, launch, python3Packages, rclpy, ros2bag, ros2run, ros2topic, rosbag2-py, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-rolling-replay-testing";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/replay_testing-release/archive/release/rolling/replay_testing/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "4a08b318e08ebfc363943ed37a909ad56bd8b25401182a2f2bc2f20fae81c58d";
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
