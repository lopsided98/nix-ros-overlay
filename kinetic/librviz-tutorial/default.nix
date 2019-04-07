
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-librviz-tutorial";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/librviz_tutorial/0.10.3-0.tar.gz;
    sha256 = "b5a720da115f3a9db015b020c78c0b9336a48e77d848fd6aa237f53ef4099d13";
  };

  buildInputs = [ roscpp rviz qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorial showing how to compile your own C++ program with RViz displays and features.'';
    #license = lib.licenses.BSD;
  };
}
