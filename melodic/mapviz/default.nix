
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt-qmake, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-melodic-mapviz";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "162dc50cad75cb8d5125fad2c789494e5be659199b4b49747f92e75bd3ee73a2";
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
