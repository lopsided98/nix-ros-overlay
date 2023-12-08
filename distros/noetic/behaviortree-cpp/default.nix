
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, ros-environment, roslib, sqlite }:
buildRosPackage {
  pname = "ros-noetic-behaviortree-cpp";
  version = "4.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/noetic/behaviortree_cpp/4.4.2-1.tar.gz";
    name = "4.4.2-1.tar.gz";
    sha256 = "879f1202c11a95f16a36348f212e8092598221ea2f6daba6a6fa15ba57cfe586";
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
