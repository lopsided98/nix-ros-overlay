
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, catkin, allocators, roslib, std-msgs, lockfree, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rosrt";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/rosrt/1.0.25-0.tar.gz;
    sha256 = "d059e4e4434e4f0d21069db378ac23798fc644b559ac390b3cfa3886cba5195e";
  };

  buildInputs = [ roslib rosatomic std-msgs rosunit lockfree roscpp allocators ];
  propagatedBuildInputs = [ roslib rosatomic std-msgs rosunit lockfree roscpp allocators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosrt provides classes for interfacing with ROS from within realtime systems, such as realtime-safe Publisher and Subscriber classes.'';
    #license = lib.licenses.BSD;
  };
}
