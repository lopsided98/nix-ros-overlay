
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cppzmq, ncurses, ros-environment, roslib }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp-v3";
  version = "3.8.6-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/noetic/behaviortree_cpp_v3/3.8.6-1.tar.gz";
    name = "3.8.6-1.tar.gz";
    sha256 = "126d402ea4d93a6ced2eb83302fb0926f45580ea56242857c9f2b4ce4b60fdbe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ boost cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
