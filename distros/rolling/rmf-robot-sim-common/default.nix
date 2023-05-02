
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rmf-robot-sim-common";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_robot_sim_common/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "8200e8e876b4cec91a83bc01df2d6746b7ada838963ecc0cfa71895679eca9cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo-classic and Gazebo RMF plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
