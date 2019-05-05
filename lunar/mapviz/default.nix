
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, cv-bridge, freeglut, swri-yaml-util, tf, swri-transform-util, image-transport, pkg-config, message-generation, message-runtime, libqt-dev, libqt-opengl, std-srvs, rosapi, catkin, qt-qmake, rqt-gui-cpp, xorg, roscpp, pluginlib, libqt-core, marti-common-msgs, libqt-opengl-dev, glew }:
buildRosPackage {
  pname = "ros-lunar-mapviz";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/lunar/mapviz/1.1.0-0.tar.gz;
    sha256 = "fe5d49cba57f66fea6a920f7f98e3499b1bf4267582eb97fa6f9c7b193525291";
  };

  buildInputs = [ rqt-gui cv-bridge xorg.libXi freeglut swri-yaml-util tf xorg.libXmu swri-transform-util image-transport message-generation libqt-dev std-srvs rosapi rqt-gui-cpp roscpp pluginlib marti-common-msgs libqt-opengl-dev glew ];
  propagatedBuildInputs = [ rqt-gui cv-bridge xorg.libXi freeglut swri-yaml-util tf xorg.libXmu swri-transform-util image-transport message-runtime libqt-opengl std-srvs rosapi rqt-gui-cpp roscpp pluginlib libqt-core marti-common-msgs glew ];
  nativeBuildInputs = [ catkin qt-qmake pkg-config ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
