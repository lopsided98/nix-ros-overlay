
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gps-common, mapviz, pluginlib, qt5, roscpp, rospy, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-melodic-multires-image";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/multires_image/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "566978f405d258ba5c807dbf25edcd2a438061545c51b54cad478140a7fb6b13";
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
