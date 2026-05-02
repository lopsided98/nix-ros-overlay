
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, ros2topic, rosidl-default-generators, rosidl-runtime-py, std-msgs, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-rolling-topic-tools";
  version = "1.4.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools/1.4.4-2.tar.gz";
    name = "1.4.4-2.tar.gz";
    sha256 = "ae0e11e56d1deec4316bc90f9a5139a3444cdd75796be0f6d59655f004d8436b";
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
