
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-rmf-robot-sim-common";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/galactic/rmf_robot_sim_common/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "d67fd18c16afc4ed32a28b6e22390f2aed0026e0f1d41d64fada21027219d3b9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition RMF plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
