
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, nav-msgs, rclpy, robot-state-publisher, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fusioncore-gazebo";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_gazebo/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "a814642a4821dfb1a7c7746f46d71cf47f48912a6b2a9f1c3f994e319c054b5c";
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
