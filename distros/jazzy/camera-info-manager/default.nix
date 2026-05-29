
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rclcpp-lifecycle, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-camera-info-manager";
  version = "5.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/jazzy/camera_info_manager/5.1.8-1.tar.gz";
    name = "5.1.8-1.tar.gz";
    sha256 = "df700533e4df4c1a16092a6878eaf41fb8ec3453dc9dd7e3eeb55e1a162eba4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers rclcpp rclcpp-lifecycle rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
