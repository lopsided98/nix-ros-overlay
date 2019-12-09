
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, message-generation, utillinux, boost, pluginlib, std-msgs, cmake-modules, catkin, rospy, roscpp, message-runtime, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-nodelet";
  version = "1.9.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/kinetic/nodelet/1.9.14-0.tar.gz";
    name = "1.9.14-0.tar.gz";
    sha256 = "cc6baa5ffeed8bdb4b9b1be10b0e2dd0ee6759f09e68cb1d6f5d4fb36b7cd66c";
  };

  buildType = "catkin";
  buildInputs = [ bondcpp utillinux boost pluginlib std-msgs cmake-modules roscpp message-generation rosconsole ];
  propagatedBuildInputs = [ bondcpp utillinux boost pluginlib std-msgs rospy roscpp message-runtime rosconsole ];
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
