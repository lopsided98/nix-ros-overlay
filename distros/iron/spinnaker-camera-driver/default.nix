
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-spinnaker-camera-driver";
  version = "2.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/iron/spinnaker_camera_driver/2.2.13-1.tar.gz";
    name = "2.2.13-1.tar.gz";
    sha256 = "2bba7d141187049768f3b7bfcd6e1c3ca15feee2fa94f5bcb4a0ef153ff207ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake curl dpkg python3Packages.distro ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager ffmpeg flir-camera-msgs image-transport libusb1 rclcpp rclcpp-components sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver for flir spinnaker sdk'';
    license = with lib.licenses; [ "Apache-2" bsdOriginal ];
  };
}
