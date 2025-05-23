
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, boost, catkin, cmake-modules, message-generation, message-runtime, pluginlib, rosconsole, roscpp, rospy, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-noetic-nodelet";
  version = "1.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet/1.11.2-1.tar.gz";
    name = "1.11.2-1.tar.gz";
    sha256 = "30eb5e5ae6238706716d235879a569660d2e379d7659e1cd2fae5c05c49085d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ bondcpp boost message-runtime pluginlib rosconsole roscpp rospy std-msgs util-linux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The nodelet package is designed to provide a way to run multiple
    algorithms in the same process with zero copy transport between
    algorithms.

    This package provides both the nodelet base class needed for
    implementing a nodelet, as well as the NodeletLoader class used
    for instantiating nodelets.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
