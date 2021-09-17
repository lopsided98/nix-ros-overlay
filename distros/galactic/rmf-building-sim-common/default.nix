
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-building-sim-common";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/galactic/rmf_building_sim_common/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "25729574cbe901b27a230dc92be6b2ed2ac838c3c27aa299c4dc2ebd5e98afab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ menge-vendor rclcpp rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition building plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
