
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-junitparser, ament-cmake, ament-cmake-pytest, geometry-msgs, launch, python3Packages, rclpy, ros2bag, ros2run, ros2topic, rosbag2-py, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-lyrical-replay-testing";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/replay_testing-release/archive/release/lyrical/replay_testing/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "2e08c0dd545d4e21f2cfc485db39fb325f5d9873b653361c82ac118af7402343";
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
