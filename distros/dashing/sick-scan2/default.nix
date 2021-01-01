
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-sick-scan2";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan2-release/archive/release/dashing/sick_scan2/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "82eede312065545f777f0e6dbc15cb9ddb1f12bf6051d50e1c93b13c101593bd";
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
