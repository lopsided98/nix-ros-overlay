
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, ffmpeg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-spinnaker-camera-driver";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/spinnaker_camera_driver/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "7094f53820655d99a92baf9e115f32dd7457105734f9584f3eaf092816c9457f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros curl dpkg python3Packages.distro ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager ffmpeg flir-camera-msgs image-transport libusb1 rclcpp rclcpp-components sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS2 driver for flir spinnaker sdk";
    license = with lib.licenses; [ "Apache-2" bsdOriginal ];
  };
}
