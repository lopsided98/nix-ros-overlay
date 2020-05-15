
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt-qmake, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-melodic-mapviz";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "9b350a336527518c988bf02bae3c027f1e839b35d552fef47c8ea70b22a4c764";
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
