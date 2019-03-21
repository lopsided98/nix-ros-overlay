
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-calibration, catkin }:
buildRosPackage {
  pname = "ros-melodic-fetch-calibration";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_calibration/0.8.0-0.tar.gz;
    sha256 = "721f6d930a2272ade866193f850e96785ed5d2f3a40244857e79ae7bc1ac1546";
  };

  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    #license = lib.licenses.Apache2;
  };
}
