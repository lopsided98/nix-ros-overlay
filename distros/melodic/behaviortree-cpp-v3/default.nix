
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cppzmq, ncurses, roslib }:
buildRosPackage {
  pname = "ros-melodic-behaviortree-cpp-v3";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/melodic/behaviortree_cpp_v3/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "7b0cdac49844985116bdbcdd988112fbc3d4cc922707863279b4353ab7d3b35b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cppzmq ncurses roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
