
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, nav-msgs, rclpy, robot-state-publisher, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fusioncore-gazebo";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_gazebo/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ee06dc3beff5387f6ff936dc8f84c5623d953164cfd77c86b1c8c7e7f850c341";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fusioncore-ros nav-msgs rclpy robot-state-publisher sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation world for FusionCore integration testing";
    license = with lib.licenses; [ asl20 ];
  };
}
