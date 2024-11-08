
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, rosidl-default-generators, rosidl-runtime-py, std-msgs, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-topic-tools";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/jazzy/topic_tools/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "37412def2a1c8c8270940066bd5f71bc242579fd2fbad80fffef0ced23bc40a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclpy ros2cli rosidl-runtime-py topic-tools-interfaces ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Tools for directing, throttling, selecting, and otherwise messing with
    ROS 2 topics at a meta level.";
    license = with lib.licenses; [ asl20 ];
  };
}
