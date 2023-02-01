
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-control-msgs, cob-moveit-bringup, cob-moveit-config, cob-srvs, eigen-conversions, fcl, geometric-shapes, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-perception, moveit-ros-planning-interface, pkg-config, roscpp, rospy, tf, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-obstacle-distance-moveit";
  version = "0.7.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_manipulation-release";
        rev = "release/melodic/cob_obstacle_distance_moveit/0.7.5-1";
        sha256 = "sha256-ZCpIqsFnjwQ02Yi2zKbF8LN34Kgkj6phCISJdYze+78=";
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
