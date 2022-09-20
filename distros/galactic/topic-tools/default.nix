
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclpy, ros2cli, rosidl-default-generators, rosidl-runtime-py, topic-tools-interfaces }:
buildRosPackage {
  pname = "ros-galactic-topic-tools";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/galactic/topic_tools/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6e56bb47916f83e2251b9a2b509462a9b5df5a8e4cb1bf21b28191dd1fe6542f";
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
