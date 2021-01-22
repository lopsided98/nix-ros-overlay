
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, roslib }:
buildRosPackage {
  pname = "ros-kinetic-behaviortree-cpp";
  version = "2.5.1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/kinetic/behaviortree_cpp/2.5.1-0.tar.gz";
    name = "2.5.1-0.tar.gz";
    sha256 = "e8732929b0566874fe3b9584fcf40df76c10ec686fcd9fd9affba6e90a8e4e86";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    license = with lib.licenses; [ mit ];
  };
}
