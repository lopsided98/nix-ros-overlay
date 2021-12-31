
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cob-control-msgs, cob-srvs, dynamic-reconfigure, eigen, eigen-conversions, fcl, geometry-msgs, interactive-markers, joint-state-publisher, kdl-conversions, kdl-parser, moveit-msgs, orocos-kdl, pkg-config, robot-state-publisher, roscpp, roslib, roslint, rospy, rviz, sensor-msgs, shape-msgs, std-msgs, tf, tf-conversions, urdf, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-obstacle-distance";
  version = "0.8.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_obstacle_distance/0.8.17-1.tar.gz";
    name = "0.8.17-1.tar.gz";
    sha256 = "7de7dc257ac1d212f5e784c0cdf4c02909bffe20c576532365619b5e681cdcdf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assimp boost cob-control-msgs cob-srvs dynamic-reconfigure eigen eigen-conversions fcl geometry-msgs interactive-markers joint-state-publisher kdl-conversions kdl-parser moveit-msgs orocos-kdl pkg-config robot-state-publisher roscpp roslib roslint rospy rviz sensor-msgs shape-msgs std-msgs tf tf-conversions urdf visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_obstacle_distance package calculates distances between both robot links and obstacles to be used for obstacle avoidance within cob_twist_controller framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
