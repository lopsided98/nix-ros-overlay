
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, ffmpeg, image-transport, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-foxy-usb-cam";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/usb_cam-release/archive/release/foxy/usb_cam/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "80afcf551cfac0d60fde305ac68ad73ce18ae1036e44311c56f567b42ac9a840";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager ffmpeg image-transport rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''A ROS2 Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
