
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ros-environment, roslib, sqlite }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp";
  version = "4.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/noetic/behaviortree_cpp/4.3.5-1.tar.gz";
    name = "4.3.5-1.tar.gz";
    sha256 = "82873d422154d4b51eda7c24134cd284a2d784a7358d6984c047ee7fa8454612";
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
