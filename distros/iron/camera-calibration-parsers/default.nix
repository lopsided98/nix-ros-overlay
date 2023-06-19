
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-camera-calibration-parsers";
  version = "4.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/iron/camera_calibration_parsers/4.2.0-3.tar.gz";
    name = "4.2.0-3.tar.gz";
    sha256 = "5e533144a5a9897b7f9bbf9da2d8ecf9aa60b6aab14fd2fdd01fff3743ac62a2";
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
