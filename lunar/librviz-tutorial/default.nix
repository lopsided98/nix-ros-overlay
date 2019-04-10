
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-lunar-librviz-tutorial";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/librviz_tutorial/0.10.3-0.tar.gz;
    sha256 = "b6e60aaacba3636bd8299daed80c9711af70c04bc6923ecc691114a6abd44e0f";
  };

  buildInputs = [ roscpp rviz qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorial showing how to compile your own C++ program with RViz displays and features.'';
    #license = lib.licenses.BSD;
  };
}
