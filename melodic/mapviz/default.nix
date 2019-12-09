
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, pluginlib, qt-qmake, tf, image-transport, libqt-dev, swri-transform-util, rqt-gui, rqt-gui-cpp, swri-yaml-util, xorg, std-srvs, catkin, marti-common-msgs, cv-bridge, roscpp, pkg-config, message-generation, libqt-opengl, freeglut, libqt-opengl-dev, libqt-core, glew, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mapviz";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "162dc50cad75cb8d5125fad2c789494e5be659199b4b49747f92e75bd3ee73a2";
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
