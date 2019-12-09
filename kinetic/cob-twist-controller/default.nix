
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, urdf, eigen-conversions, pluginlib, tf, eigen, cob-srvs, nav-msgs, kdl-parser, sensor-msgs, dynamic-reconfigure, robot-state-publisher, cmake-modules, orocos-kdl, cob-control-msgs, std-msgs, catkin, roscpp, topic-tools, rospy, cob-frame-tracker, kdl-conversions, trajectory-msgs, boost, roslint, rviz, visualization-msgs, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-cob-twist-controller";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_twist_controller/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "d8bc0759fa0c8a26ee1bc412e01600e0b61a3cfa800133df8e7ebd85b3d26273";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf eigen-conversions pluginlib tf eigen cob-srvs nav-msgs kdl-parser sensor-msgs dynamic-reconfigure cmake-modules orocos-kdl cob-control-msgs std-msgs roscpp kdl-conversions trajectory-msgs boost roslint visualization-msgs tf-conversions ];
  propagatedBuildInputs = [ xacro geometry-msgs urdf eigen-conversions pluginlib tf eigen cob-srvs nav-msgs kdl-parser sensor-msgs dynamic-reconfigure robot-state-publisher cmake-modules orocos-kdl cob-control-msgs std-msgs roscpp topic-tools cob-frame-tracker rospy kdl-conversions trajectory-msgs boost rviz visualization-msgs tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The main purpose of the cob_twist_controller is to convert target twists into joint velocities. 
  Therefore it makes use of several implemented inverse kinematics approaches at the first order differential level. 
  The inverse differential kinematics solver considers kinematic chain extensions, singularity robustness, 
  redundancy resolution and priority-based methods.
  To avoid hardware destruction there is a limiter interface active as well. 
  Via parameter server users can dynamically configure the solving strategy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
