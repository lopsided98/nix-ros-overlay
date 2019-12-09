
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, ament-lint-common, image-transport, ament-cmake-gtest, rclcpp, camera-calibration-parsers, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-camera-info-manager";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/dashing/camera_info_manager/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "16076998df016347c19e0ef1aeac75cf8f0dd883958bd1f3331c1d3f2dd8f81d";
  };

  buildType = "ament_cmake";
  buildInputs = [ image-transport sensor-msgs rclcpp camera-calibration-parsers ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ image-transport sensor-msgs rclcpp camera-calibration-parsers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
