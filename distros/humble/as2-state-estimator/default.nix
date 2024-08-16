
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, geometry-msgs, mocap4r2-msgs, nav-msgs, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-state-estimator";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_state_estimator/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2463e8d42475e2602e03ddf4e95515c5748ae378158dd5b103419791a39ef409";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core geometry-msgs mocap4r2-msgs nav-msgs rclcpp tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic state estimator for AeroStack2";
    license = with lib.licenses; [ "BDS-3-Clause" ];
  };
}
