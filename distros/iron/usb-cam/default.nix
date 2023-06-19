
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, cv-bridge, ffmpeg, image-transport, image-transport-plugins, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-iron-usb-cam";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/usb_cam-release/archive/release/iron/usb_cam/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "a552f20572a97cf5230acdfeee42f86878a220f1feb85afc98c20ac5541b6fc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager cv-bridge ffmpeg image-transport image-transport-plugins rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''A ROS 2 Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
