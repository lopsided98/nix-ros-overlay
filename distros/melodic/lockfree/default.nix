
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, rosatomic, rosconsole, roslib }:
buildRosPackage {
  pname = "ros-melodic-lockfree";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/melodic/lockfree/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "659c8d7707b844cc4c8c9eeab40e3e33fdd65f1ca0e07f71b471dd4dad633e4f";
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
