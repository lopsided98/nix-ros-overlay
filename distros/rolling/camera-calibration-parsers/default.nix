
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration-parsers";
  version = "5.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_calibration_parsers/5.3.1-1.tar.gz";
    name = "5.3.1-1.tar.gz";
    sha256 = "5640fa3e01df90144262b146972837461f093899ee042b866de9614fe7ec5c10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
