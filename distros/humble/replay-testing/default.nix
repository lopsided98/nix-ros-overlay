
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-junitparser, ament-cmake, ament-cmake-pytest, geometry-msgs, launch, python3Packages, rclpy, ros2bag, ros2run, ros2topic, rosbag2-py, rosbag2-storage-mcap }:
buildRosPackage {
  pname = "ros-humble-replay-testing";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/replay_testing-release/archive/release/humble/replay_testing/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "12802d8715ad812110bcaf45a8a55cf1c78c73a701aa6e49ee6e572bc50229fe";
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
