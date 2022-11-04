
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, roslib }:
buildRosPackage {
  pname = "ros-melodic-behaviortree-cpp";
  version = "2.5.1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/melodic/behaviortree_cpp/2.5.1-0.tar.gz";
    name = "2.5.1-0.tar.gz";
    sha256 = "cd1af27ccb2e5763fa4e9f02e23edf77fca7d1894d013a0d932e7f5ad05d337c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cppzmq roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    license = with lib.licenses; [ mit ];
  };
}
