
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rmf-robot-sim-common";
  version = "2.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/lyrical/rmf_robot_sim_common/2.6.1-3.tar.gz";
    name = "2.6.1-3.tar.gz";
    sha256 = "e84049eb71613d1f81bdf86132d3190fc5fccd3cb182c62ab4e133abad638b25";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-fleet-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Common utility functions for Gazebo-classic and Gazebo RMF plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
