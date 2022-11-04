
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-calibration }:
buildRosPackage {
  pname = "ros-melodic-fetch-calibration";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_calibration/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "3e2fafdcabe870e9a85de7e96582f8d42371e6cd23354f8f3da19f2331598178";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
