
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, ament-lint-common, image-transport, ament-cmake-gtest, rclcpp, camera-calibration-parsers, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-camera-info-manager";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/eloquent/camera_info_manager/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "8beb019756322ebea094b8fbde865d12a57248f6a8bf7e2552c489f967018c55";
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
