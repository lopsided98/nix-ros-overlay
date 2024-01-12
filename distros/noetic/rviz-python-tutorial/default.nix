
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-python-tutorial";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/rviz_python_tutorial/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "a6973338e5b84132cb2d445288ec8c6d84b81964c28e72be3c7010379e8ea599";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to call into rviz internals from python scripts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
