
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-frame-tracker, cob-script-server, cob-srvs, cob-twist-controller, geometry-msgs, message-generation, message-runtime, python3Packages, robot-state-publisher, roscpp, roslint, rospy, rviz, std-msgs, std-srvs, tf, topic-tools, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-cartesian-controller";
  version = "0.8.22-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_cartesian_controller/0.8.22-1.tar.gz";
    name = "0.8.22-1.tar.gz";
    sha256 = "68a8f80f05a8d5c0d03b7eef9013e9b22e55638a86048fc4d331d644d58b1658";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools roslint ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost cob-frame-tracker cob-script-server cob-srvs cob-twist-controller geometry-msgs message-runtime robot-state-publisher roscpp rospy rviz std-msgs std-srvs tf topic-tools visualization-msgs xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    license = with lib.licenses; [ asl20 ];
  };
}
