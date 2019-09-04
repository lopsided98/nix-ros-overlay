
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, ament-lint-common, ament-cmake-gtest, sensor-msgs, rclcpp, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-camera-calibration-parsers";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/image_common-release/archive/release/crystal/camera_calibration_parsers/2.0.1-0.tar.gz;
    sha256 = "5514c154dde82c64bfeb0429016be98dca06045908ab314727c0ef234615a26a";
  };

  buildInputs = [ yaml-cpp-vendor sensor-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ yaml-cpp-vendor sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
