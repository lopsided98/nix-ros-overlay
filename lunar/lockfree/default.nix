
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, rosconsole, catkin, allocators, roslib }:
buildRosPackage {
  pname = "ros-lunar-lockfree";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/lunar/lockfree/1.0.25-0.tar.gz;
    sha256 = "9941bb494ae219671db52ed2797c3ab2ee9dc8e5bb662848ecad973e847d0fbf";
  };

  buildInputs = [ rosconsole rosatomic roslib allocators ];
  propagatedBuildInputs = [ rosconsole rosatomic roslib allocators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lockfree package contains lock-free data structures for use in multithreaded programming.  These
     kinds of data structures are generally not as easy to use as single-threaded equivalents, and are not
     always faster.  If you don't know you need to use one, try another structure with a lock around it
     first.'';
    #license = lib.licenses.BSD;
  };
}
