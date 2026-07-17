
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-kuka-mock-hardware-interface";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_mock_hardware_interface/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6519121578ccf75f018fca86ab4190f100c414fe35a0f56d842aaa4289259878";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 control mock hardware for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
