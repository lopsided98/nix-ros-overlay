
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, cmake-modules, catkin, tf2-ros, roscpp, rostest, dynamic-reconfigure, eigen-conversions, rosparam-handler, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-iirob-filters";
  version = "0.8.1-r3";

  src = fetchurl {
    url = https://github.com/KITrobotics/iirob_filters-release/archive/release/kinetic/iirob_filters/0.8.1-3.tar.gz;
    sha256 = "f083c70688f848452c3c68ac030b5ecf36bd7899a36331eadf1f6132954dca79";
  };

  propagatedBuildInputs = [ filters cmake-modules pluginlib roscpp tf2-ros rostest dynamic-reconfigure eigen-conversions rosparam-handler geometry-msgs ];
  nativeBuildInputs = [ filters cmake-modules pluginlib catkin roscpp tf2-ros rostest dynamic-reconfigure eigen-conversions rosparam-handler geometry-msgs ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter
      5) Kalman Filter'';
    #license = lib.licenses.LGPLv3;
  };
}
