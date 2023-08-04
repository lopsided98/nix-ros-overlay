
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, camera-info-manager, curl, dpkg, flir-camera-msgs, image-transport, libusb1, python3Packages, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-spinnaker-camera-driver";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/spinnaker_camera_driver/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "c58dfe42d5a2fe2a1aa6e3c2b0e5146771daef8762fe6f260051c8138725eb50";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake curl dpkg python3Packages.distro ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager flir-camera-msgs image-transport libusb1 rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver for flir spinnaker sdk'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
