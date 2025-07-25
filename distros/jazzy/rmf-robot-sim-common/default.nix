
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rmf-robot-sim-common";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/jazzy/rmf_robot_sim_common/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "e2be9579177a517253984be9aa470c9d427aa1cba3c69fabdb38b877f6c33af8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Common utility functions for Gazebo-classic and Gazebo RMF plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
