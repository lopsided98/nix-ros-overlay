
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, boost, catkin, cmake-modules, message-generation, message-runtime, pluginlib, rosconsole, roscpp, rospy, std-msgs, util-linux }:
buildRosPackage {
  pname = "ros-melodic-nodelet";
  version = "1.9.16";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/melodic/nodelet/1.9.16-0.tar.gz";
    name = "1.9.16-0.tar.gz";
    sha256 = "3a9e9701df570659d70f871eb7e1970dacd3b89c02513c456f8f0ea1a446d15a";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
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
