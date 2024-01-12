
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-v4l2-camera";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_v4l2_camera-release/archive/release/iron/v4l2_camera/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "d4470ecaec872fb0797265a85cb291f351b872770884ea9e7860a2da7e606417";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A ROS 2 camera driver using Video4Linux2'';
    license = with lib.licenses; [ asl20 ];
  };
}
