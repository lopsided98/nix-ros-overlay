
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cob-control-msgs, cob-srvs, dynamic-reconfigure, eigen, eigen-conversions, fcl, geometry-msgs, interactive-markers, joint-state-publisher, kdl-conversions, kdl-parser, moveit-msgs, orocos-kdl, pkg-config, robot-state-publisher, roscpp, roslib, roslint, rospy, rviz, sensor-msgs, shape-msgs, std-msgs, tf, tf-conversions, urdf, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-obstacle-distance";
  version = "0.8.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_obstacle_distance/0.8.19-1.tar.gz";
    name = "0.8.19-1.tar.gz";
    sha256 = "562962aeac35064d98ae91ec9af8b3e2670ce5f8630ef6435bed4bdd48b85b81";
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
