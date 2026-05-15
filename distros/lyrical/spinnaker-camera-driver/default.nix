
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, curl, diagnostic-updater, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, llvmPackages, python3Packages, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-spinnaker-camera-driver";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/lyrical/spinnaker_camera_driver/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "cb48d271778e85a3d8ddbd6f94386e143781da3afb234302c020a3880cf8be53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros curl dpkg python3Packages.distro ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater ffmpeg flir-camera-msgs image-transport libusb1 llvmPackages.openmp rclcpp rclcpp-components sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS2 driver for flir spinnaker sdk";
    license = with lib.licenses; [ "Apache-2" bsdOriginal ];
  };
}
