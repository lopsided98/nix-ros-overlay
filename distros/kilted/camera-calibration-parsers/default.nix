
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-camera-calibration-parsers";
  version = "6.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/kilted/camera_calibration_parsers/6.1.2-1.tar.gz";
    name = "6.1.2-1.tar.gz";
    sha256 = "56ffcbff9262bfe16db39f46ec1a5f22ae2cd1b029920a2bdcbee190231b107f";
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
