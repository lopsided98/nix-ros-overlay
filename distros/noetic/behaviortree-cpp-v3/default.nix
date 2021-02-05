
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp-v3";
  version = "3.5.6-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/noetic/behaviortree_cpp_v3/3.5.6-1.tar.gz";
    name = "3.5.6-1.tar.gz";
    sha256 = "84953f257a1688fedaa43e75b5bab98ad2fca50aac91823f0d0d9b109aa31631";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
