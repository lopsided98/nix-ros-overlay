
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-mission-items, tobas-mission-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-msgs-adapter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_msgs_adapter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "6c4934d816b6e2f5552c67c40a8e3d7c9f8d0e6e99fae99d3cc40c7b6ec2adb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-mission-items tobas-mission-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas mission and mission-item types.";
    license = with lib.licenses; [ asl20 ];
  };
}
