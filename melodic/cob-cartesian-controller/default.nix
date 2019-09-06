
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy, actionlib, tf, geometry-msgs, boost, roslint, message-generation, rviz, message-runtime, robot-state-publisher, xacro, std-srvs, cob-twist-controller, catkin, cob-frame-tracker, std-msgs, visualization-msgs, roscpp, cob-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-cob-cartesian-controller";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_cartesian_controller/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "b075e089783d55f61a9c72abb5b79e8c0b61b6a04bd970356fc7f82d24b8ba37";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs boost actionlib-msgs roslint roscpp cob-srvs message-generation visualization-msgs actionlib std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cob-twist-controller boost actionlib-msgs roscpp rospy cob-srvs std-msgs actionlib message-runtime robot-state-publisher cob-frame-tracker topic-tools rviz visualization-msgs tf xacro geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    license = with lib.licenses; [ asl20 ];
  };
}
