
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-sim-common";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_building_sim_common/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "3130ced7406f1a3bf8af8d0d23c9713b7df0a26b2024440649b164e204c0002c";
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
