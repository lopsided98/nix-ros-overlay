
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rmf-robot-sim-common";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_robot_sim_common/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "e0df9d4482af9a57886bd612fc93f3860fd0a76a435e5f93fb6dd42ee40a625d";
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
