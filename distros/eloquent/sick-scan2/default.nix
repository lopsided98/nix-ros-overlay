
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-sick-scan2";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan2-release/archive/release/eloquent/sick_scan2/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "f498e5af171a45ac8218300ab19aa2bc2a708c0896c9b72002b09b847838a73e";
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
