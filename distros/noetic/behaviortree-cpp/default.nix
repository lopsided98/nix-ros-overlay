
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ros-environment, roslib, sqlite }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp";
  version = "4.3.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/noetic/behaviortree_cpp/4.3.6-2.tar.gz";
    name = "4.3.6-2.tar.gz";
    sha256 = "c5f74c1c7db149eb101bd91e9faf7fe3378aee1be66253aa5875f74c534047b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ cppzmq roslib sqlite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
