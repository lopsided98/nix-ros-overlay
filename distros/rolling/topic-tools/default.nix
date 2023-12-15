
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, rosidl-default-generators, rosidl-runtime-py, std-msgs, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-rolling-topic-tools";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "e38ccdb246e8a2764c80a366931c5612ec33e0801f6355a354735d05e5e37ef2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclpy ros2cli rosidl-runtime-py topic-tools-interfaces ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python rosidl-default-generators ];

  meta = {
    description = ''Tools for directing, throttling, selecting, and otherwise messing with
    ROS 2 topics at a meta level.'';
    license = with lib.licenses; [ asl20 ];
  };
}
