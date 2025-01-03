
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, cv-bridge, ffmpeg, image-transport, image-transport-plugins, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-rolling-usb-cam";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/usb_cam-release/archive/release/rolling/usb_cam/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "9b8eab3ae3078f86578ed39ab6d87e87ceaf8e09bfc04a0d034f6337f3e7b3ea";
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
