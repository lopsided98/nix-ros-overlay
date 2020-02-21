
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-sick-scan2";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan2-release/archive/release/eloquent/sick_scan2/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "6033e4d2569c53fb3f1c14dc45069a60b6c89ba39188dd36c2dbbce49d28f6bf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost diagnostic-updater rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A ROS2 driver for the SICK TiM series of laser scanners.
    This package is based on the sick_scan-Repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
