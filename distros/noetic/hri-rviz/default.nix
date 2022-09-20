
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, hri, hri-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-hri-rviz";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_rviz-release/archive/release/noetic/hri_rviz/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "cd6d26e6326015a4f93aed18262afbefd5f25c4dbae23ad3b2d1c4dd2659f9b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge hri hri-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains several rviz plugins to visualize HRI-related topics (like face/body region of interests, 3D skeletons...)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
