
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-spinnaker-camera-driver";
  version = "2.0.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/rolling/spinnaker_camera_driver/2.0.16-1.tar.gz";
    name = "2.0.16-1.tar.gz";
    sha256 = "70453999cd051165f4d463738c7754466ac826af4ba7d15fd56f1dafb95a1e92";
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
