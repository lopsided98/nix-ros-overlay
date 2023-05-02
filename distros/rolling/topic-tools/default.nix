
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, rosidl-default-generators, rosidl-runtime-py, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-rolling-topic-tools";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "9760e2039641c2a27684abf58f87813105c663bdd2fc5c56681147423aa51689";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclpy ros2cli rosidl-runtime-py topic-tools-interfaces ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python rosidl-default-generators ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
