
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, rosatomic, rosconsole, roslib }:
buildRosPackage {
  pname = "ros-noetic-lockfree";
  version = "1.0.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/noetic/lockfree/1.0.25-1.tar.gz";
    name = "1.0.25-1.tar.gz";
    sha256 = "b72d3a14bcf278cd607e730ad2f0d988f4f03c8d116fdf401fbc75440269a8d5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ allocators rosatomic rosconsole roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lockfree package contains lock-free data structures for use in multithreaded programming.  These
     kinds of data structures are generally not as easy to use as single-threaded equivalents, and are not
     always faster.  If you don't know you need to use one, try another structure with a lock around it
     first.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
