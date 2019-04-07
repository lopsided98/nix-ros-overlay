
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, pluginlib, mapviz, cv-bridge, catkin, libqt-core, roscpp, gps-common, qt-qmake, swri-yaml-util, rospy, libqt-dev, libqt-opengl-dev, libqt-opengl, tf, swri-transform-util }:
buildRosPackage {
  pname = "ros-kinetic-multires-image";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/multires_image/1.1.0-0.tar.gz;
    sha256 = "a581c7fbe0d3594cdf57a756e3a6581dac8a0fbcc5bd9ced40f0b8c0f61a4758";
  };

  buildInputs = [ swri-math-util pluginlib mapviz cv-bridge roscpp gps-common swri-yaml-util libqt-dev libqt-opengl-dev tf swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util pluginlib mapviz cv-bridge libqt-core roscpp gps-common swri-yaml-util rospy libqt-opengl tf swri-transform-util ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''multires_image'';
    #license = lib.licenses.BSD;
  };
}
