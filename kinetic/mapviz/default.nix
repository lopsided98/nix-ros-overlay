
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt-qmake, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-kinetic-mapviz";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8a27377ddcd860bdbf067431053f68118bc4500c507be494242c942f00ddf99a";
  };

  buildType = "catkin";
  buildInputs = [ libqt-dev libqt-opengl-dev message-generation ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libqt-core libqt-opengl marti-common-msgs message-runtime pluginlib rosapi roscpp rqt-gui rqt-gui-cpp std-srvs swri-transform-util swri-yaml-util tf xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ catkin pkg-config qt-qmake ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
