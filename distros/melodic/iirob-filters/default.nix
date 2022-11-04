
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen-conversions, filters, geometry-msgs, pluginlib, roscpp, rosparam-handler, rostest, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-iirob-filters";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/iirob_filters-release/archive/release/melodic/iirob_filters/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "9ba0c2617ca283652577baa67f0a379974488d85fa5bf89ae1331ac9d917ebe0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure eigen-conversions filters geometry-msgs pluginlib roscpp rosparam-handler rostest tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter
      5) Kalman Filter'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
