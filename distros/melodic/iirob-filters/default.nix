
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen-conversions, filters, geometry-msgs, pluginlib, roscpp, rosparam-handler, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-iirob-filters";
  version = "0.8.3-r2";

  src = fetchurl {
    url = "https://github.com/KITrobotics/iirob_filters-release/archive/release/melodic/iirob_filters/0.8.3-2.tar.gz";
    name = "0.8.3-2.tar.gz";
    sha256 = "90eafcd1b7a8ea55473788276d8e62b8721028dfcb286c0c09b2c39f4cb24a21";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure eigen-conversions filters geometry-msgs pluginlib roscpp rosparam-handler rostest tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter
      5) Kalman Filter'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
