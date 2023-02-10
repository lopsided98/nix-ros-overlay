
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, flatland-msgs, flatland-server, ogre1_9, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-flatland-viz";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_viz/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "2f705b2466ce163f42016b5f5aadaf2e15e7c849994b0e1a592b44cf6f0775b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ flatland-msgs flatland-server ogre1_9 qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The flatland gui and visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
