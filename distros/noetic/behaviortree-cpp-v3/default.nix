
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp-v3";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/noetic/behaviortree_cpp_v3/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "7650489692bdf82b407cbf0b70db2f598465e4b97b236fa861624f3f71550dc3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
