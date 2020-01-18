
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, roslib }:
buildRosPackage {
  pname = "ros-kinetic-behaviortree-cpp-v3";
  version = "3.1.0-r3";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/kinetic/behaviortree_cpp_v3/3.1.0-3.tar.gz";
    name = "3.1.0-3.tar.gz";
    sha256 = "6cebfa97ecdd80f3df387d2793bac8d99d69a9a73de102d207dda917deb287d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
