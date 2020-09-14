
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gps-common, mapviz, pluginlib, qt5, roscpp, rospy, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-melodic-multires-image";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/multires_image/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ba3bd5912f74e34bb5d9072a5cbda6d3e2ed50e932a786a6a9969b4d48b5df2a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-common mapviz pluginlib qt5.qtbase roscpp rospy swri-math-util swri-transform-util swri-yaml-util tf ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
