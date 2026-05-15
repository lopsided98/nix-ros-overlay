
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, nav-msgs, rclpy, robot-state-publisher, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fusioncore-gazebo";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_gazebo/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "62222563dbba9e5a63f6a26a85ee671cc36ceda02dea9c9146f101a9c6da9073";
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
