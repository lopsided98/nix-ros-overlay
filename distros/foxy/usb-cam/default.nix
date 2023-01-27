
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, cv-bridge, ffmpeg, image-transport, image-transport-plugins, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-foxy-usb-cam";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/usb_cam-release/archive/release/foxy/usb_cam/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "641ae94c4e059fc8b876acfe43a38a0b8708ca3626ecf13a536ed9179d363b9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager cv-bridge ffmpeg image-transport image-transport-plugins rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''A ROS2 Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
