
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, boost, catkin, cmake-modules, message-generation, message-runtime, pluginlib, rosconsole, roscpp, rospy, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-noetic-nodelet";
  version = "1.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet/1.10.2-1.tar.gz";
    name = "1.10.2-1.tar.gz";
    sha256 = "71cd76bda95fa2bcb3938a4b1700faa2dcbaf741e0ba2494934e560b4c5ee92c";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ bondcpp boost message-runtime pluginlib rosconsole roscpp rospy std-msgs util-linux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nodelet package is designed to provide a way to run multiple
    algorithms in the same process with zero copy transport between
    algorithms.

    This package provides both the nodelet base class needed for
    implementing a nodelet, as well as the NodeletLoader class used
    for instantiating nodelets.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
