
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, camera-info-manager, cv-bridge, ffmpeg, image-transport, image-transport-plugins, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-humble-usb-cam";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/usb_cam-release/archive/release/humble/usb_cam/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "fc7ffde88bd2b3766b87a52d3bab612deb778964f14b91aae45784c78e10ba10";
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
