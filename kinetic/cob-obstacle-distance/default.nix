
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, tf-conversions, tf, geometry-msgs, boost, roslint, pkg-config, rviz, robot-state-publisher, eigen-conversions, roslib, joint-state-publisher, xacro, kdl-conversions, orocos-kdl, cob-control-msgs, catkin, urdf, std-msgs, moveit-msgs, roscpp, visualization-msgs, eigen, shape-msgs, kdl-parser, cmake-modules, sensor-msgs, assimp, cob-srvs, interactive-markers, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-obstacle-distance";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_obstacle_distance/0.7.4-0.tar.gz;
    sha256 = "1c48b3a9ba142f819dca7b7b560bc7030c973c96e35898cb075d1bee342660ad";
  };

  buildInputs = [ tf-conversions tf geometry-msgs boost roslint pkg-config eigen-conversions roslib kdl-conversions orocos-kdl cob-control-msgs urdf std-msgs moveit-msgs roscpp visualization-msgs eigen shape-msgs kdl-parser cmake-modules sensor-msgs assimp cob-srvs dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy tf-conversions tf geometry-msgs boost roslint pkg-config rviz robot-state-publisher eigen-conversions roslib joint-state-publisher xacro kdl-conversions orocos-kdl cob-control-msgs urdf std-msgs moveit-msgs roscpp visualization-msgs eigen shape-msgs kdl-parser cmake-modules sensor-msgs assimp cob-srvs interactive-markers dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_obstacle_distance package'';
    license = with lib.licenses; [ asl20 ];
  };
}
