
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cob-control-msgs, cob-srvs, dynamic-reconfigure, eigen, eigen-conversions, fcl, geometry-msgs, interactive-markers, joint-state-publisher, kdl-conversions, kdl-parser, moveit-msgs, orocos-kdl, pkg-config, robot-state-publisher, roscpp, roslib, roslint, rospy, rviz, sensor-msgs, shape-msgs, std-msgs, tf, tf-conversions, urdf, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-obstacle-distance";
  version = "0.8.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_obstacle_distance/0.8.20-1.tar.gz";
    name = "0.8.20-1.tar.gz";
    sha256 = "6bcf902f3bf1fcaf5cb288f95f9f3bfd2c009bbb3376e2be9207ca59b4ed496f";
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
