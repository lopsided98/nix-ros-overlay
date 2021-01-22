
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge }:
buildRosPackage {
  pname = "ros-noetic-cpp-common";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/cpp_common/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "28a7892680c8c40eb4e77cd9c962abd22a0459fa9e69d73730ed3ebe3be5b9b7";
  };

  buildType = "catkin";
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
