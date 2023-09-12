
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, create-msgs, diagnostic-msgs, diagnostic-updater, geometry-msgs, libcreate, nav-msgs, rclcpp, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-create-driver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/foxy/create_driver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b4a688cc7717716877459e032eba64ff11089e619fc83c097899f004bd3a6c11";
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
