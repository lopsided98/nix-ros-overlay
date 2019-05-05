
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, catkin, allocators, roslib, std-msgs, lockfree, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-rosrt";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/lunar/rosrt/1.0.25-0.tar.gz;
    sha256 = "0cbf2cb9af3cb181c60129ae79c3fb44184da5592cc305eea15f0b148e490d35";
  };

  buildInputs = [ rosatomic allocators roslib std-msgs lockfree roscpp rosunit ];
  propagatedBuildInputs = [ rosatomic allocators roslib std-msgs lockfree roscpp rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosrt provides classes for interfacing with ROS from within realtime systems, such as realtime-safe Publisher and Subscriber classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
