
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge }:
buildRosPackage {
  pname = "ros-noetic-cpp-common";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/cpp_common/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "94f8dc489e48f8848d861a063f5b3578f585de3c18cd45095976fbc9df44951d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost console-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cpp_common contains C++ code for doing things that are not necessarily ROS
    related, but are useful for multiple packages. This includes things like
    the ROS_DEPRECATED and ROS_FORCE_INLINE macros, as well as code for getting
    backtraces.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
