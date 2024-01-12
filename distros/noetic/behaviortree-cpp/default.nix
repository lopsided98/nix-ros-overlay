
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ros-environment, roslib, sqlite }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp";
  version = "4.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/noetic/behaviortree_cpp/4.4.3-2.tar.gz";
    name = "4.4.3-2.tar.gz";
    sha256 = "7dc5f4cbecf5739e481f3fcc4dc6a47043a0b466dd157b7945d208db015fe68f";
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
