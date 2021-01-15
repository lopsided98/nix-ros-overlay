
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt5, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-noetic-mapviz";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/mapviz/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "9026e3ebb6759e27fcf6d9aeb4d5be214c34cfea30090bd3e1846f9d4758e8da";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport marti-common-msgs message-runtime pluginlib qt5.qtbase rosapi roscpp rqt-gui rqt-gui-cpp std-srvs swri-transform-util swri-yaml-util tf xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ catkin pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
