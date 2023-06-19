
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, rosidl-default-generators, rosidl-runtime-py, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-iron-topic-tools";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/iron/topic_tools/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "900f7bd204ab7b94757cf01ee18fdc3dc2fa84e2bc13cf3e8041d71d8c4bc49e";
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
