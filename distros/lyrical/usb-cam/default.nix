
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, cv-bridge, ffmpeg, image-transport, image-transport-plugins, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-lyrical-usb-cam";
  version = "0.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/usb_cam-release/archive/release/lyrical/usb_cam/0.8.1-3.tar.gz";
    name = "0.8.1-3.tar.gz";
    sha256 = "b2406c1007dedbd83a57968b44ff25d9d30ae76583c2dd9b058c3cb0b0fc2cb8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager cv-bridge ffmpeg image-transport image-transport-plugins rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "A ROS Driver for V4L USB Cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
