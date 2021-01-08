
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-calibration }:
buildRosPackage {
  pname = "ros-kinetic-fetch-calibration";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_calibration/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "cf1827f5e4852f4a2eed515deb1b1fd6788b25f7d55376a0d519ff49cb9b6ca3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
