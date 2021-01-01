
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, lockfree, rosatomic, roscpp, roslib, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosrt";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/rosrt/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "d059e4e4434e4f0d21069db378ac23798fc644b559ac390b3cfa3886cba5195e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ allocators lockfree rosatomic roscpp roslib rosunit std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosrt provides classes for interfacing with ROS from within realtime systems, such as realtime-safe Publisher and Subscriber classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
