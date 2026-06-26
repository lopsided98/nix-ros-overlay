
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, rosgraph-msgs, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mobile-robot-simulator";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/mobile_robot_simulator-release/archive/release/lyrical/mobile_robot_simulator/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ab8abbf56ed2438f9b6f7df1e9642fa09bb10a6e4b893f4b262950b46709de43";
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
