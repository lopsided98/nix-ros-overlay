
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-sick-scan2";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan2-release/archive/release/foxy/sick_scan2/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "1fbaf2a4944f195661ef778c79448d0d51a16ac3ac24b73a94b0e6bf436a7e3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost diagnostic-updater rclcpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A ROS2 driver for the SICK TiM series of laser scanners.
    This package is based on the sick_scan-Repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
