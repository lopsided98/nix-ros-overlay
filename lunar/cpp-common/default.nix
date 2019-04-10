
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, console-bridge, catkin, boost }:
buildRosPackage {
  pname = "ros-lunar-cpp-common";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/lunar/cpp_common/0.6.11-0.tar.gz;
    sha256 = "fdc77b465e975f8d990924a593a654ae286c76b22aea98b00144b817159495e8";
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
