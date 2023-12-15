
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-spinnaker-camera-driver";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/iron/spinnaker_camera_driver/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "a0b0ca2fa1e38b01d0e0440962c973a0472e4df95f79faf1b063c4bd99eb91a5";
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
