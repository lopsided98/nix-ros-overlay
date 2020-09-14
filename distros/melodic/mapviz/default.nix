
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt5, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-melodic-mapviz";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "55ef75e0be4d7291c57a7443f2bf9eef936293b85774ddad31347a37b1636d55";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport marti-common-msgs message-runtime pluginlib qt5.qtbase rosapi roscpp rqt-gui rqt-gui-cpp std-srvs swri-transform-util swri-yaml-util tf xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ catkin pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
