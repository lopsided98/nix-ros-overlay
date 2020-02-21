
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen-conversions, filters, geometry-msgs, pluginlib, roscpp, rosparam-handler, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-iirob-filters";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/iirob_filters-release/archive/release/kinetic/iirob_filters/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "49b6825ee4eb633d00d726efcad2378d28b58befc09408c68a58f424ea78e4af";
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
