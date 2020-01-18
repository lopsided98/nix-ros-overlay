
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gps-common, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, mapviz, pluginlib, qt-qmake, roscpp, rospy, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-kinetic-multires-image";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/multires_image/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c270152ffb38cb659a576f23beb54d4d688f5d5b35cc43cbabaeccaf496f85f2";
  };

  buildType = "catkin";
  buildInputs = [ libqt-dev libqt-opengl-dev ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-common libqt-core libqt-opengl mapviz pluginlib roscpp rospy swri-math-util swri-transform-util swri-yaml-util tf ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
