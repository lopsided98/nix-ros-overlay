
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, ffmpeg, image-transport, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-galactic-usb-cam";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/usb_cam-release/archive/release/galactic/usb_cam/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3d526bb3a8559d357e5a30c58a6dbeff14e43ffd52a552210b0dd70b54d5af45";
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
