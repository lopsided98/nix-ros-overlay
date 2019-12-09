
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, tf, actionlib-msgs, cob-srvs, robot-state-publisher, cob-twist-controller, std-msgs, std-srvs, catkin, roscpp, topic-tools, cob-frame-tracker, rospy, message-generation, boost, actionlib, roslint, rviz, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-cartesian-controller";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_cartesian_controller/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e26930ffcef3f7474575e8027ac8aae3f23ceb281e34265bc177cd5bbca981b7";
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
