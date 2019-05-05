
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, pluginlib, mapviz, cv-bridge, catkin, libqt-core, roscpp, gps-common, qt-qmake, swri-yaml-util, rospy, libqt-dev, libqt-opengl-dev, libqt-opengl, tf, swri-transform-util }:
buildRosPackage {
  pname = "ros-melodic-multires-image";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/multires_image/1.1.0-0.tar.gz;
    sha256 = "f7c8afa9753d8b540f5b10af86adecf209bec63d12f99370da58b373cecd8f59";
  };

  buildInputs = [ swri-math-util pluginlib mapviz cv-bridge roscpp gps-common swri-yaml-util libqt-dev libqt-opengl-dev tf swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util pluginlib mapviz cv-bridge libqt-core roscpp gps-common swri-yaml-util rospy libqt-opengl tf swri-transform-util ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
