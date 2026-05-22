
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, ros2topic, rosidl-default-generators, rosidl-runtime-py, std-msgs, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-rolling-topic-tools";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "fd5d71c266da9a53a29cc971e445caa3b9dcf4dafcb9a2c668ac76f4f85c38b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclpy ros2cli ros2topic rosidl-runtime-py topic-tools-interfaces ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python rosidl-default-generators ];

  meta = {
    description = "Tools for directing, throttling, selecting, and otherwise messing with
    ROS 2 topics at a meta level.";
    license = with lib.licenses; [ asl20 ];
  };
}
