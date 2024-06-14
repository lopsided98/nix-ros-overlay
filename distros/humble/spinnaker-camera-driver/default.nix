
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-spinnaker-camera-driver";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/spinnaker_camera_driver/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "4e0db76759dc7e0d0cdc4983456fa22811be36c6f1a44889b60b959e76a1c575";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros curl dpkg python3Packages.distro ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager ffmpeg flir-camera-msgs image-transport libusb1 rclcpp rclcpp-components sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "ROS2 driver for flir spinnaker sdk";
    license = with lib.licenses; [ "Apache-2" bsdOriginal ];
  };
}
