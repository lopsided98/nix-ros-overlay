
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, robot-calibration }:
buildRosPackage {
  pname = "ros-noetic-fetch-calibration";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_calibration/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "c11144a32a9706f74aec372cde05591232580d7d20824eeabd270f8d8c03b79b";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
