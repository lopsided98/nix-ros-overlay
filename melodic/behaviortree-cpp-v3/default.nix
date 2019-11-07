
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppzmq, roslib, catkin }:
buildRosPackage {
  pname = "ros-melodic-behaviortree-cpp-v3";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/melodic/behaviortree_cpp_v3/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "2c5f5784135cd3f4ff117b3b965ad455fc879f2e2be4a243662ac98917a3443e";
  };

  buildType = "catkin";
  buildInputs = [ cppzmq roslib ];
  propagatedBuildInputs = [ cppzmq roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
