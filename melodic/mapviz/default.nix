
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, cv-bridge, freeglut, swri-yaml-util, tf, swri-transform-util, image-transport, pkg-config, message-generation, message-runtime, libqt-dev, libqt-opengl, std-srvs, rosapi, catkin, qt-qmake, rqt-gui-cpp, xorg, roscpp, pluginlib, libqt-core, marti-common-msgs, libqt-opengl-dev, glew }:
buildRosPackage {
  pname = "ros-melodic-mapviz";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "162dc50cad75cb8d5125fad2c789494e5be659199b4b49747f92e75bd3ee73a2";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui cv-bridge xorg.libXi freeglut swri-yaml-util tf xorg.libXmu swri-transform-util image-transport message-generation libqt-dev std-srvs rosapi rqt-gui-cpp roscpp pluginlib marti-common-msgs libqt-opengl-dev glew ];
  propagatedBuildInputs = [ rqt-gui cv-bridge xorg.libXi freeglut swri-yaml-util tf xorg.libXmu swri-transform-util image-transport message-runtime libqt-opengl std-srvs rosapi rqt-gui-cpp roscpp pluginlib libqt-core marti-common-msgs glew ];
  nativeBuildInputs = [ catkin qt-qmake pkg-config ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
