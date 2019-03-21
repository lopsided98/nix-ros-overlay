
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, cv-bridge, freeglut, swri-yaml-util, tf, swri-transform-util, image-transport, pkg-config, message-generation, message-runtime, libqt-dev, libqt-opengl, std-srvs, rosapi, catkin, qt-qmake, rqt-gui-cpp, xorg, roscpp, pluginlib, libqt-core, marti-common-msgs, libqt-opengl-dev, glew }:
buildRosPackage {
  pname = "ros-kinetic-mapviz";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz/1.1.0-0.tar.gz;
    sha256 = "8c1b54ae0baf598e1d525b5d8a6ee847f113ada7216d11ab2f3cb2c7aee34554";
  };

  propagatedBuildInputs = [ std-srvs rosapi rqt-gui cv-bridge xorg.libXi freeglut rqt-gui-cpp swri-yaml-util roscpp tf xorg.libXmu swri-transform-util pluginlib image-transport libqt-core libqt-opengl marti-common-msgs message-runtime glew ];
  nativeBuildInputs = [ std-srvs rosapi rqt-gui cv-bridge catkin xorg.libXi freeglut qt-qmake rqt-gui-cpp swri-yaml-util roscpp tf xorg.libXmu swri-transform-util pluginlib image-transport pkg-config message-generation marti-common-msgs libqt-dev libqt-opengl-dev glew ];

  meta = {
    description = ''mapviz'';
    #license = lib.licenses.BSD;
  };
}
