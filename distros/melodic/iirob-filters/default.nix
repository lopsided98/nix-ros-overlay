
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen-conversions, filters, geometry-msgs, pluginlib, roscpp, rosparam-handler, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-iirob-filters";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/iirob_filters-release/archive/release/melodic/iirob_filters/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "7ed0549cbc54b49b2462c34e0597f9c7d3758b30ea0942450ba8c6027b2bcfbb";
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
