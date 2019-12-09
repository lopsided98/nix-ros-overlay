
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, pluginlib, qt-qmake, tf, image-transport, libqt-dev, swri-transform-util, rqt-gui, rqt-gui-cpp, swri-yaml-util, xorg, std-srvs, catkin, marti-common-msgs, cv-bridge, roscpp, pkg-config, message-generation, libqt-opengl, freeglut, libqt-opengl-dev, libqt-core, glew, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-mapviz";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8a27377ddcd860bdbf067431053f68118bc4500c507be494242c942f00ddf99a";
  };

  buildType = "catkin";
  buildInputs = [ rosapi pluginlib tf xorg.libXmu image-transport libqt-dev swri-transform-util rqt-gui rqt-gui-cpp swri-yaml-util std-srvs xorg.libXi marti-common-msgs cv-bridge roscpp message-generation freeglut libqt-opengl-dev glew ];
  propagatedBuildInputs = [ rosapi pluginlib tf xorg.libXmu image-transport swri-transform-util rqt-gui rqt-gui-cpp swri-yaml-util std-srvs xorg.libXi marti-common-msgs cv-bridge roscpp libqt-opengl freeglut libqt-core glew message-runtime ];
  nativeBuildInputs = [ qt-qmake pkg-config catkin ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
