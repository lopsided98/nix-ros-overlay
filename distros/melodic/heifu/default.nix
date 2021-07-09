
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collision-avoidance, control-bringup, gcs-interface, gimbal, gnss-utils, gpu-voxels-ros, heifu-bringup, libmavconn, mavros, mavros-commands, mavros-extras, mavros-msgs, navigation-controller, planner, planners-manager, priority-manager, rrt, status-diagnostic, test-mavros, uav-msgs, waypoints-manager }:
buildRosPackage {
  pname = "ros-melodic-heifu";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "9d924036981d7bc4aec3b2205d86dddcf7e7c4b9dd48696841acb679945aec60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ collision-avoidance control-bringup gcs-interface gimbal gnss-utils gpu-voxels-ros heifu-bringup libmavconn mavros mavros-commands mavros-extras mavros-msgs navigation-controller planner planners-manager priority-manager rrt status-diagnostic test-mavros uav-msgs waypoints-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heifu metapackage that installs all heifu related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
