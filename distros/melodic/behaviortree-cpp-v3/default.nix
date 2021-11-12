
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-melodic-behaviortree-cpp-v3";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/melodic/behaviortree_cpp_v3/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "948b583cb3a4fd0c8b51650981b1591785a5896a555b22a711d47c3791861b54";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
