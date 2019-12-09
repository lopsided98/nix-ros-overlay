
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, eigen-conversions, pluginlib, rosparam-handler, filters, cmake-modules, catkin, roscpp, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-iirob-filters";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/KITrobotics/iirob_filters-release/archive/release/melodic/iirob_filters/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "6629c570ce81b0181753951b2c3376bfe2c81ba9d8819f32380e8a5e668c3494";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure eigen-conversions pluginlib rosparam-handler filters cmake-modules roscpp rostest tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure eigen-conversions pluginlib rosparam-handler filters cmake-modules roscpp rostest tf2-ros ];
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
