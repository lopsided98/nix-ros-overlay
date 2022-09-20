
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-building-sim-common";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/galactic/rmf_building_sim_common/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "0595835d60f45f636b85b98d403981e3824ccfabb5c7246ad5d39f1ce733c546";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ menge-vendor rclcpp rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition building plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
