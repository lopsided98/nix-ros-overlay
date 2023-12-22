
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-building-sim-common";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/iron/rmf_building_sim_common/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "9e4f16c2f9f7127723f1c13336867c737e8001fb582d5b8e98c9c64ebb7077a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ menge-vendor rclcpp rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo-classic and Gazebo building plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
