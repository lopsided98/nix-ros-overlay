
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, nav-msgs, rclpy, robot-state-publisher, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-gazebo";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_gazebo/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "0674575b0f40f82f0e0aa43d3dd8f71a2fca76ce49414dc9fd7241ae7178a07b";
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
