
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cob-control-msgs, cob-srvs, dynamic-reconfigure, eigen, eigen-conversions, fcl, geometry-msgs, interactive-markers, joint-state-publisher, kdl-conversions, kdl-parser, moveit-msgs, orocos-kdl, pkg-config, robot-state-publisher, roscpp, roslib, roslint, rospy, rviz, sensor-msgs, shape-msgs, std-msgs, tf, tf-conversions, urdf, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-obstacle-distance";
  version = "0.8.21-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_control-release";
        rev = "release/noetic/cob_obstacle_distance/0.8.21-1";
        sha256 = "sha256-CumoNrFL2iuJRwZlmUvIFqMQv5NQfczU2j9hN2qOhAE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ assimp boost cob-control-msgs cob-srvs dynamic-reconfigure eigen eigen-conversions fcl geometry-msgs interactive-markers joint-state-publisher kdl-conversions kdl-parser moveit-msgs orocos-kdl pkg-config robot-state-publisher roscpp roslib roslint rospy rviz sensor-msgs shape-msgs std-msgs tf tf-conversions urdf visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_obstacle_distance package calculates distances between both robot links and obstacles to be used for obstacle avoidance within cob_twist_controller framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
