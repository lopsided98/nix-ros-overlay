
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, boost, catkin, cmake-modules, message-generation, message-runtime, pluginlib, rosconsole, roscpp, rospy, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-noetic-nodelet";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "b79c548103a7a267e7b18888e06528cd98d62aaf078eb21a7f6c6f7c21cb62e0";
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
