
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-kinetic-behaviortree-cpp-v3";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/kinetic/behaviortree_cpp_v3/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "8a9a8c15aee07dad7fc6371fdda97e9bee120c317c06e64bde09b9a73d109fb5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
