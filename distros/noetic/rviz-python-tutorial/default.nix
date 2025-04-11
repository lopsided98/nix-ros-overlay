
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-python-tutorial";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/rviz_python_tutorial/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "4e26cfa674bd4700044ea3d4c6e9ffda030e43d840c2b332a8f812ae81e2130a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tutorials showing how to call into rviz internals from python scripts.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
