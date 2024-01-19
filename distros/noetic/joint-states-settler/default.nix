
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, rosconsole, roscpp, roscpp-serialization, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-states-settler";
  version = "0.10.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/noetic/joint_states_settler/0.10.15-1.tar.gz";
    name = "0.10.15-1.tar.gz";
    sha256 = "ee45d920a5f98e55c7619fe1526c0d75e6d141fee0e6e7cf3dbe4facc16ba38c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs rosconsole roscpp roscpp-serialization settlerlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a node that reports how long a subset of joints has been
     settled. That is, it calculates how long a set of joints has remained
     within a specified threshold. This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
