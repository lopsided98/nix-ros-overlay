
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-calibration }:
buildRosPackage {
  pname = "ros-melodic-fetch-calibration";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_calibration/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "246ba4835fc72780262b5f3444bf03a93039c0b407594e84e7fb8274a3b7d2ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
