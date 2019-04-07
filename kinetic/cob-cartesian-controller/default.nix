
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy, actionlib, tf, geometry-msgs, boost, roslint, message-generation, rviz, message-runtime, robot-state-publisher, xacro, std-srvs, cob-twist-controller, catkin, cob-frame-tracker, std-msgs, visualization-msgs, roscpp, cob-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-cob-cartesian-controller";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_cartesian_controller/0.7.4-0.tar.gz;
    sha256 = "9bdc0ef131d56fd0a75f39a70ec621887fc770d27607ca185e9630a028d18786";
  };

  buildInputs = [ std-srvs boost actionlib-msgs roslint roscpp cob-srvs message-generation visualization-msgs actionlib std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cob-twist-controller boost actionlib-msgs topic-tools roscpp rospy cob-srvs rviz actionlib robot-state-publisher cob-frame-tracker std-msgs visualization-msgs message-runtime tf xacro geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    #license = lib.licenses.Apache 2.0;
  };
}
