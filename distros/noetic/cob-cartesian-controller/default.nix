
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-frame-tracker, cob-script-server, cob-srvs, cob-twist-controller, geometry-msgs, message-generation, message-runtime, python3Packages, robot-state-publisher, roscpp, roslint, rospy, rviz, std-msgs, std-srvs, tf, topic-tools, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-cartesian-controller";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_cartesian_controller/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "1fdb0286c8fb3cb2c13963b85a23212a7b5b41ad0bdabc2d5bba085dfe3377d9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost cob-frame-tracker cob-script-server cob-srvs cob-twist-controller geometry-msgs message-runtime robot-state-publisher roscpp rospy rviz std-msgs std-srvs tf topic-tools visualization-msgs xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This package provides nodes that broadcast tf-frames along various (model-based) Cartesian paths (e.g. Linear, Circular).
    The tf-frames are interpolated using a given velocity profile (e.g. Ramp, Sinoid) and can be used as targets for the cob_frame_tracker/cob_twist_controller.'';
    license = with lib.licenses; [ asl20 ];
  };
}
