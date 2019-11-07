
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, ament-lint-common, ament-cmake-gtest, sensor-msgs, diagnostic-updater, rclcpp, std-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-sick-scan2";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan2-release/archive/release/dashing/sick_scan2/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "82eede312065545f777f0e6dbc15cb9ddb1f12bf6051d50e1c93b13c101593bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost sensor-msgs diagnostic-updater rclcpp std-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ boost sensor-msgs diagnostic-updater rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A ROS2 driver for the SICK TiM series of laser scanners.
    This package is based on the sick_scan-Repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
