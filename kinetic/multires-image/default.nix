
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, swri-yaml-util, libqt-opengl, qt-qmake, pluginlib, swri-math-util, tf, mapviz, catkin, libqt-dev, cv-bridge, libqt-opengl-dev, libqt-core, roscpp, swri-transform-util, rospy, gps-common }:
buildRosPackage {
  pname = "ros-kinetic-multires-image";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/multires_image/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c270152ffb38cb659a576f23beb54d4d688f5d5b35cc43cbabaeccaf496f85f2";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib swri-math-util tf mapviz roscpp libqt-dev cv-bridge libqt-opengl-dev swri-transform-util swri-yaml-util gps-common ];
  propagatedBuildInputs = [ geometry-msgs libqt-opengl pluginlib swri-math-util tf mapviz roscpp libqt-core cv-bridge swri-transform-util rospy swri-yaml-util gps-common ];
  nativeBuildInputs = [ qt-qmake catkin ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
