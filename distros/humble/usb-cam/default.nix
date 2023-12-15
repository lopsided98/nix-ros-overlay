
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, cv-bridge, ffmpeg, image-transport, image-transport-plugins, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-humble-usb-cam";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/usb_cam-release/archive/release/humble/usb_cam/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "8f9c20140e37f35d8c7ed19662fdfa6e2cb561775249e423baadc5b622550a8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager cv-bridge ffmpeg image-transport image-transport-plugins rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''A ROS Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
