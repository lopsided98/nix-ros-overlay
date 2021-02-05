
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, boost, catkin, cmake-modules, message-generation, message-runtime, pluginlib, rosconsole, roscpp, rospy, std-msgs, utillinux }:
buildRosPackage {
  pname = "ros-noetic-nodelet";
  version = "1.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet/1.10.1-1.tar.gz";
    name = "1.10.1-1.tar.gz";
    sha256 = "e5fc828f77cb9bc673340bae8e29fde4d16be54ceec4ef23153e29bc9aa0c00b";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ bondcpp boost message-runtime pluginlib rosconsole roscpp rospy std-msgs utillinux ];
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
