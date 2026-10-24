
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3Packages, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration-parsers";
  version = "7.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_calibration_parsers/7.0.5-1.tar.gz";
    name = "7.0.5-1.tar.gz";
    sha256 = "9bac29437f603cb8332290544f698040a12aae6da861b867400f26559a517aaa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python3Packages.pyyaml ];
  propagatedBuildInputs = [ ament-cmake-ros-core rclcpp sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsd3 ];
  };
}
