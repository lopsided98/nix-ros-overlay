
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, zeromq3 }:
buildRosPackage {
  pname = "ros-lunar-behaviortree-cpp";
  version = "2.5.1";

  src = fetchurl {
    url = https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/lunar/behaviortree_cpp/2.5.1-0.tar.gz;
    sha256 = "6581db05c29d4662c39564131952c9c1e134465b3ea57fd4c582350079979377";
  };

  buildInputs = [ roslib zeromq3 ];
  propagatedBuildInputs = [ roslib zeromq3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    #license = lib.licenses.MIT;
  };
}
