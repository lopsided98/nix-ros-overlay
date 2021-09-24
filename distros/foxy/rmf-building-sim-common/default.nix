
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-building-sim-common";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/foxy/rmf_building_sim_common/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "446a62c8436b5c6482ab3681b5def11f0e60317d172e85b8736353407abd9e43";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ menge-vendor rclcpp rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition building plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
