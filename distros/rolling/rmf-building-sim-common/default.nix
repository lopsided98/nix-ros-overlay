
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-sim-common";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_building_sim_common/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "6effa117785102453c38ffd6f8a3363c044a0e1b56d6d0c32a85bc8d0874f50a";
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
