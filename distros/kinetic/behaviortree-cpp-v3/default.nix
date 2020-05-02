
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-kinetic-behaviortree-cpp-v3";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/kinetic/behaviortree_cpp_v3/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "9beeb6883bf81e441fa7a746e1597a078cf508361120ea4d7cb39f5a2cceca18";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
