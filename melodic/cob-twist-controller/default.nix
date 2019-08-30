
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, tf-conversions, tf, geometry-msgs, roslint, boost, rviz, robot-state-publisher, eigen-conversions, xacro, kdl-conversions, orocos-kdl, cob-control-msgs, trajectory-msgs, catkin, nav-msgs, urdf, cob-frame-tracker, std-msgs, roscpp, visualization-msgs, eigen, kdl-parser, cmake-modules, pluginlib, sensor-msgs, cob-srvs, dynamic-reconfigure, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-cob-twist-controller";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_twist_controller/0.8.0-1.tar.gz;
    sha256 = "b9d449b443b20e83c4918a015cae7b7e1a850583bf560f3ac75b4974939db22e";
  };

  buildInputs = [ tf-conversions tf geometry-msgs roslint boost eigen-conversions kdl-conversions orocos-kdl cob-control-msgs trajectory-msgs nav-msgs urdf std-msgs roscpp visualization-msgs eigen kdl-parser cmake-modules pluginlib sensor-msgs cob-srvs dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy tf-conversions tf geometry-msgs boost rviz robot-state-publisher eigen-conversions xacro kdl-conversions orocos-kdl cob-control-msgs trajectory-msgs nav-msgs urdf cob-frame-tracker std-msgs roscpp visualization-msgs eigen kdl-parser cmake-modules pluginlib sensor-msgs cob-srvs dynamic-reconfigure topic-tools ];
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