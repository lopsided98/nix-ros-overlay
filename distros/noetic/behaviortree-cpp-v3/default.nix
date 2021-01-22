
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp-v3";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/noetic/behaviortree_cpp_v3/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "be572da316779c43e60a73249a34a5211238ff0520b28ce7d42080abba68e7a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
