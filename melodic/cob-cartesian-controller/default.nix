
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, tf, actionlib-msgs, cob-srvs, robot-state-publisher, cob-twist-controller, std-msgs, std-srvs, catkin, roscpp, topic-tools, cob-frame-tracker, rospy, message-generation, boost, actionlib, roslint, rviz, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cob-cartesian-controller";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_cartesian_controller/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "676934ceb346e29f9fd3c43c8e12460d7479a56ecdf3608fefd198b201e08e44";
  };

  buildType = "catkin";
  buildInputs = [ boost geometry-msgs std-msgs std-srvs actionlib tf roslint actionlib-msgs visualization-msgs roscpp message-generation cob-srvs ];
  propagatedBuildInputs = [ boost xacro geometry-msgs message-runtime robot-state-publisher std-msgs std-srvs tf actionlib cob-twist-controller rviz rospy actionlib-msgs roscpp visualization-msgs topic-tools cob-frame-tracker cob-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    license = with lib.licenses; [ asl20 ];
  };
}
