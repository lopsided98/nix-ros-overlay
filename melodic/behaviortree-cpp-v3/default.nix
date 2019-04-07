
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, elfutils, zeromq3 }:
buildRosPackage {
  pname = "ros-melodic-behaviortree-cpp-v3";
  version = "3.0.7";

  src = fetchurl {
    url = https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/melodic/behaviortree_cpp_v3/3.0.7-0.tar.gz;
    sha256 = "fefe63e715f3e2c0e6b1a9a3b57848639f70576986a4f24d7b88a5d8e838b257";
  };

  buildInputs = [ roslib zeromq3 elfutils ];
  propagatedBuildInputs = [ roslib zeromq3 elfutils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    #license = lib.licenses.MIT;
  };
}
