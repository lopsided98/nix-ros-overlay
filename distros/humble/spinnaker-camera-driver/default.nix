
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-spinnaker-camera-driver";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/spinnaker_camera_driver/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "b9bf154de3f4addc2d95db68a4359cc2fc1056aed27689f4b6f719a99624c8fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake curl dpkg python3Packages.distro ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager ffmpeg flir-camera-msgs image-transport libusb1 rclcpp rclcpp-components sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 driver for flir spinnaker sdk";
    license = with lib.licenses; [ "Apache-2" bsdOriginal ];
  };
}
