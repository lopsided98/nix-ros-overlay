
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-control-msgs, cob-moveit-bringup, cob-moveit-config, cob-srvs, eigen-conversions, fcl, geometric-shapes, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-perception, moveit-ros-planning-interface, pkg-config, roscpp, rospy, tf, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-obstacle-distance-moveit";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_obstacle_distance_moveit/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "0b60c877eb05d3a1e1e22d33a456688a018bef984bdcb3d4ca173f4850730a3d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cob-control-msgs cob-moveit-bringup cob-moveit-config cob-srvs eigen-conversions fcl geometric-shapes geometry-msgs moveit-core moveit-msgs moveit-ros-perception moveit-ros-planning-interface pkg-config roscpp rospy tf tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes for calculating the minimal distance to robot links, obstacles and octomap using MoveIt!'s PlanningSceneMonitor'';
    license = with lib.licenses; [ asl20 ];
  };
}
