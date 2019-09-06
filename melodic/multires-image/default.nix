
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, pluginlib, mapviz, cv-bridge, catkin, libqt-core, roscpp, gps-common, qt-qmake, swri-yaml-util, rospy, libqt-dev, libqt-opengl-dev, libqt-opengl, tf, geometry-msgs, swri-transform-util }:
buildRosPackage {
  pname = "ros-melodic-multires-image";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/multires_image/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ff18ebdd591e53604b81f703406af9fa9747a64ff46d8d069f164b06c6d8b880";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util pluginlib mapviz cv-bridge roscpp gps-common swri-yaml-util libqt-dev libqt-opengl-dev tf geometry-msgs swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util pluginlib mapviz cv-bridge libqt-core roscpp gps-common swri-yaml-util rospy libqt-opengl tf geometry-msgs swri-transform-util ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
