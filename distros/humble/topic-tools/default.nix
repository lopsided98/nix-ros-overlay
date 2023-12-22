
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, rosidl-default-generators, rosidl-runtime-py, std-msgs, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-humble-topic-tools";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/humble/topic_tools/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "6b262f27054b6d627f765627eccef88fcfbf25c1dbbd9a56eb26b61f2530e151";
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
