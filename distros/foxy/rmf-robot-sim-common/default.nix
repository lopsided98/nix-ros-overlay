
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-rmf-robot-sim-common";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/foxy/rmf_robot_sim_common/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "e9c35639b9a4e5f2b1a8d2c3b2d1400251ca58e28cb07ad11a96558b6061a192";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition RMF plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
