
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, catkin, settlerlib, actionlib, roscpp-serialization, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-joint-states-settler";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/kinetic/joint_states_settler/0.10.14-0.tar.gz;
    sha256 = "fe19d91ab7814b863b654bf2a6d4b63bbccf0bd98cc86c6379bdfcb7c7c0e9b9";
  };

  propagatedBuildInputs = [ settlerlib actionlib rosconsole actionlib-msgs roscpp-serialization std-msgs roscpp ];
  nativeBuildInputs = [ settlerlib actionlib rosconsole actionlib-msgs roscpp-serialization std-msgs catkin roscpp ];

  meta = {
    description = ''Provides a node that reports how long a subset of joints has been
     settled. That is, it calculates how long a set of joints has remained
     within a specified threshold. This package is experimental and unstable.
     Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
