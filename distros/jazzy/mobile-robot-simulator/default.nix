
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, rosgraph-msgs, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mobile-robot-simulator";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/mobile_robot_simulator-release/archive/release/jazzy/mobile_robot_simulator/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b0e77721646bd4bed7438a4c54c981c8b62fbc9c87ef0943c4434cfe65b13741";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp rosgraph-msgs sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The mobile_robot_simulator package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
