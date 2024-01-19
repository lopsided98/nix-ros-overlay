
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, create-msgs, diagnostic-msgs, diagnostic-updater, geometry-msgs, libcreate, nav-msgs, rclcpp, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-create-driver";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/humble/create_driver/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "0a9e7da39aea121e8599da5e652b911c6ad2521a8b54cec581fb1be97db4bb96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ create-msgs diagnostic-msgs diagnostic-updater geometry-msgs libcreate nav-msgs rclcpp sensor-msgs std-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS driver for iRobot's Create and Roomba platforms, based on libcreate'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
