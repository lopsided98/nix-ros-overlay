
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gps-common, mapviz, pluginlib, qt5, roscpp, rospy, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-noetic-multires-image";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/multires_image/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "99f107b5e3dd220a36b74628fc7a29f16bd979dc94d28e4ad823a38f280768ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-common mapviz pluginlib qt5.qtbase roscpp rospy swri-math-util swri-transform-util swri-yaml-util tf ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
