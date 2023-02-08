
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, cmake-modules, common-msgs, gencpp, geneus, genlisp, genmsg, gennodejs, genpy, message-generation, message-runtime, pluginlib, ros, ros-comm, rosbag-migration-rule, rosconsole, rosconsole-bridge, roscpp-core, rosgraph-msgs, roslisp, rospack, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-ros-core";
  version = "1.5.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "metapackages-release";
        rev = "release/noetic/ros_core/1.5.0-1";
        sha256 = "sha256-Wf/o9p7GSY+ZkdR+bX7Cbhgc5iBIRdjW9usraDstcXY=";
      };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin class-loader cmake-modules common-msgs gencpp geneus genlisp genmsg gennodejs genpy message-generation message-runtime pluginlib ros ros-comm rosbag-migration-rule rosconsole rosconsole-bridge roscpp-core rosgraph-msgs roslisp rospack std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate the packages required to use publish / subscribe, services, launch files, and other core ROS concepts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
