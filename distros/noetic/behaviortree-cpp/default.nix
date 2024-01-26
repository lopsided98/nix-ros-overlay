
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ros-environment, roslib, sqlite }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp";
  version = "4.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/noetic/behaviortree_cpp/4.5.1-1.tar.gz";
    name = "4.5.1-1.tar.gz";
    sha256 = "aaeff4262d9b49ca3ec8b3d083d8c828d369df061a0793ffba497279f2ef8ba6";
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
