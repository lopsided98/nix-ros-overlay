
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration-parsers";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_calibration_parsers/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "70ad3ca0e629f6c814e4fdf1666a15868381aebf19dc621b1bf05a7ec0e2643e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcpputils sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
