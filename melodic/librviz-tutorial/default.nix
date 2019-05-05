
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-melodic-librviz-tutorial";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/librviz_tutorial/0.10.3-0.tar.gz;
    sha256 = "65aad5382b304957a927f31695570cc9e8ff720bea22e8ca72bd049a80b54fa0";
  };

  buildInputs = [ roscpp rviz qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorial showing how to compile your own C++ program with RViz displays and features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
