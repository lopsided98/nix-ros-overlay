
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rmf-robot-sim-common";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/kilted/rmf_robot_sim_common/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "233c95141c95e5421846538951b7255728165eaf5396330204a5e4b18f3e5ac3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-fleet-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Common utility functions for Gazebo-classic and Gazebo RMF plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
