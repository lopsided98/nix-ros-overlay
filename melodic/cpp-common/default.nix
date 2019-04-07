
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, console-bridge, catkin, boost }:
buildRosPackage {
  pname = "ros-melodic-cpp-common";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/cpp_common/0.6.12-0.tar.gz;
    sha256 = "af9fef611fcdbaf9296af1f04ee2af940412d36a3bdddc6098cf77a7c795dffa";
  };

  buildInputs = [ console-bridge boost ];
  propagatedBuildInputs = [ console-bridge boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cpp_common contains C++ code for doing things that are not necessarily ROS
    related, but are useful for multiple packages. This includes things like
    the ROS_DEPRECATED and ROS_FORCE_INLINE macros, as well as code for getting
    backtraces.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    #license = lib.licenses.BSD;
  };
}
