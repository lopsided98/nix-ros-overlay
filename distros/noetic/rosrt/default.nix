
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, lockfree, rosatomic, roscpp, roslib, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosrt";
  version = "1.0.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/noetic/rosrt/1.0.25-1.tar.gz";
    name = "1.0.25-1.tar.gz";
    sha256 = "dfa4dc7b9c2ebd216827b851179eb4011dc2f845a530e7b0039d7e6bf226a704";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ allocators lockfree rosatomic roscpp roslib rosunit std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosrt provides classes for interfacing with ROS from within realtime systems, such as realtime-safe Publisher and Subscriber classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
