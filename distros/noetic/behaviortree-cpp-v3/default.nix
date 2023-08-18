
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cppzmq, ncurses, ros-environment, roslib }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp-v3";
  version = "3.8.5-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/noetic/behaviortree_cpp_v3/3.8.5-1.tar.gz";
    name = "3.8.5-1.tar.gz";
    sha256 = "f5afa436d6d868e1641bc0cada428c144646c78815f64c6b71733f41e7630c3b";
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
