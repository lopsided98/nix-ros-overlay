
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-frame-tracker, cob-script-server, cob-srvs, cob-twist-controller, geometry-msgs, message-generation, message-runtime, python3Packages, robot-state-publisher, roscpp, roslint, rospy, rviz, std-msgs, std-srvs, tf, topic-tools, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-cartesian-controller";
  version = "0.8.21-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_control-release";
        rev = "release/noetic/cob_cartesian_controller/0.8.21-1";
        sha256 = "sha256-ojOs53/8yeMBWXP3SYX1Vuqa/7uOm2X4xP/F/UjL9/U=";
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
