
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, nav-msgs, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-sim, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-gazebo";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_gazebo/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "5c55515f99b37158127974d3160afa922e3b5b5d95dd63ba0ec8dbfedcb540f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fusioncore-ros nav-msgs rclpy robot-state-publisher ros-gz-bridge ros-gz-sim sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation world for FusionCore integration testing";
    license = with lib.licenses; [ asl20 ];
  };
}
