
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-building-sim-common";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/iron/rmf_building_sim_common/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "9ece7eeab6996cc58d7babf2a9d5b9bdd1e16a3a984c079a44d15f67426426d1";
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
