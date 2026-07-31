
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, geometry-msgs, nav-msgs, rclpy, robot-localization, robot-state-publisher, ros-gz-bridge, ros-gz-sim, rviz2, sensor-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-fusioncore-gazebo";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_gazebo/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "5028d8c6ab9da2eabeeff7f448b42a0c6fa2f55befdf174eb54d3b99abac2b90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fusioncore-ros geometry-msgs nav-msgs rclpy robot-localization robot-state-publisher ros-gz-bridge ros-gz-sim rviz2 sensor-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation world for FusionCore integration testing and demo recording";
    license = with lib.licenses; [ asl20 ];
  };
}
