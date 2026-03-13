
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, rosgraph-msgs, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-mobile-robot-simulator";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/mobile_robot_simulator-release/archive/release/kilted/mobile_robot_simulator/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "73060089e2a9dc504d4b25108a6d592a15bfba575c33adf62402ea60e69d160c";
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
