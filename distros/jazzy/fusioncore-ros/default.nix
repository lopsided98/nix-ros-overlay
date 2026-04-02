
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compass-msgs, eigen3-cmake-module, fusioncore-core, geometry-msgs, nav-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-ros";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_ros/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "208f0b393d0d1672738ae878ddbc0c4b82dd7950218e541c2a976a24d7ab5cf1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ compass-msgs eigen3-cmake-module fusioncore-core geometry-msgs nav-msgs rclcpp rclcpp-lifecycle sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "FusionCore ROS 2 Jazzy wrapper — sensor fusion node";
    license = with lib.licenses; [ asl20 ];
  };
}
