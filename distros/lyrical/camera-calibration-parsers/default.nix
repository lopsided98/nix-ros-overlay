
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-camera-calibration-parsers";
  version = "6.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/lyrical/camera_calibration_parsers/6.4.9-1.tar.gz";
    name = "6.4.9-1.tar.gz";
    sha256 = "d366c597c3bd56119150ba6487105d61301260d144e4a51af5159d8bd774b355";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsd3 ];
  };
}
