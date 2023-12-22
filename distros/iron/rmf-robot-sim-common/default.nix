
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-rmf-robot-sim-common";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/iron/rmf_robot_sim_common/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "daba62dfdb2336a91fb20515e51883abb211b6129d34edf310ae86854deb478a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Common utility functions for Gazebo-classic and Gazebo RMF plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
