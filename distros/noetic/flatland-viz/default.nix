
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, flatland-msgs, flatland-server, ogre1_9, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-flatland-viz";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_viz/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "663099e3b81f9cbd6e1c2fbbb615240ea66927d666fc4196e65ff06178b94e01";
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
