
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-kinetic-behaviortree-cpp-v3";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/kinetic/behaviortree_cpp_v3/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "4090aeee2d7816ec7c5e273b3638b5e31ea99618f3360c0c0d296eba896a1bb7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
