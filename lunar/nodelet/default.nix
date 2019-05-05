
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, pluginlib, rosconsole, bondcpp, boost, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp, utillinux }:
buildRosPackage {
  pname = "ros-lunar-nodelet";
  version = "1.9.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/nodelet_core-release/archive/release/lunar/nodelet/1.9.14-0.tar.gz;
    sha256 = "2e33f0e4f3eca5affab08c6c7ee240071e0133516870b9137ac164a4f883d121";
  };

  buildInputs = [ rosconsole pluginlib boost bondcpp cmake-modules message-generation std-msgs roscpp utillinux ];
  propagatedBuildInputs = [ rosconsole pluginlib boost bondcpp message-runtime rospy std-msgs roscpp utillinux ];
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
