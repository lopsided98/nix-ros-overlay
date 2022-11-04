
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt5, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-noetic-mapviz";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/mapviz/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "9117c574ec2db3bdec3a33e14ea06b04113e8bd3a6e0c9d7b7b3a454c256567b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport marti-common-msgs message-runtime pluginlib qt5.qtbase rosapi roscpp rqt-gui rqt-gui-cpp std-srvs swri-transform-util swri-yaml-util tf xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ catkin pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
