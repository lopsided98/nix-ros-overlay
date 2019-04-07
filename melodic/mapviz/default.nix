
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, cv-bridge, freeglut, swri-yaml-util, tf, swri-transform-util, image-transport, pkg-config, message-generation, message-runtime, libqt-dev, libqt-opengl, std-srvs, rosapi, catkin, qt-qmake, rqt-gui-cpp, xorg, roscpp, pluginlib, libqt-core, marti-common-msgs, libqt-opengl-dev, glew }:
buildRosPackage {
  pname = "ros-melodic-mapviz";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz/1.1.0-0.tar.gz;
    sha256 = "f616f580f6f6712bc46043efb0a4fc6131a412504c23519d17074846c43cab8d";
  };

  buildInputs = [ std-srvs rosapi rqt-gui cv-bridge xorg.libXi freeglut rqt-gui-cpp swri-yaml-util roscpp tf xorg.libXmu swri-transform-util pluginlib image-transport message-generation marti-common-msgs libqt-dev libqt-opengl-dev glew ];
  propagatedBuildInputs = [ std-srvs rosapi rqt-gui cv-bridge xorg.libXi freeglut rqt-gui-cpp swri-yaml-util roscpp tf xorg.libXmu swri-transform-util pluginlib image-transport libqt-core libqt-opengl marti-common-msgs message-runtime glew ];
  nativeBuildInputs = [ catkin qt-qmake pkg-config ];

  meta = {
    description = ''mapviz'';
    #license = lib.licenses.BSD;
  };
}
