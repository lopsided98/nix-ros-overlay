
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-kinetic-rviz-python-tutorial";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/rviz_python_tutorial/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "c7e0327dce6a304352a1a1b2f1327d7cf4c2602426ba6ae184f7d9897aebb936";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to call into rviz internals from python scripts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
