
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gps-common, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, mapviz, pluginlib, qt-qmake, roscpp, rospy, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-melodic-multires-image";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/multires_image/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "e4faf638eb1ef323d52cd463e018fcdada4af06a67b7c27605a82f16663123c3";
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
