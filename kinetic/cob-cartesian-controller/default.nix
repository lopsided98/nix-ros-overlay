
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, tf, geometry-msgs, boost, roslint, message-generation, rviz, message-runtime, robot-state-publisher, xacro, std-srvs, cob-twist-controller, catkin, cob-frame-tracker, std-msgs, visualization-msgs, roscpp, cob-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-cob-cartesian-controller";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_cartesian_controller/0.7.3-0.tar.gz;
    sha256 = "39eac40c129a678d9ab69794f14876f59823692a8e4d2ff77befab402d0abaf0";
  };

  propagatedBuildInputs = [ std-srvs cob-twist-controller boost actionlib-msgs topic-tools roscpp rospy cob-srvs rviz actionlib robot-state-publisher cob-frame-tracker std-msgs visualization-msgs message-runtime tf xacro geometry-msgs ];
  nativeBuildInputs = [ std-srvs boost actionlib-msgs roslint catkin roscpp cob-srvs message-generation visualization-msgs actionlib std-msgs tf geometry-msgs ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    #license = lib.licenses.Apache 2.0;
  };
}
