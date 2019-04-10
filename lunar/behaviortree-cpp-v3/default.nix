
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, elfutils, zeromq3 }:
buildRosPackage {
  pname = "ros-lunar-behaviortree-cpp-v3";
  version = "3.0.7";

  src = fetchurl {
    url = https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/lunar/behaviortree_cpp_v3/3.0.7-0.tar.gz;
    sha256 = "eb1812f72a4f815b509b1046587670895ae697bf6ce80d53b23c46c351ec94a2";
  };

  buildInputs = [ roslib zeromq3 elfutils ];
  propagatedBuildInputs = [ roslib zeromq3 elfutils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    #license = lib.licenses.MIT;
  };
}
