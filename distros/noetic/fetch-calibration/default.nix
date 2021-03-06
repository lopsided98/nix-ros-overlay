
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, robot-calibration }:
buildRosPackage {
  pname = "ros-noetic-fetch-calibration";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_calibration/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "3ea8566a720e400ae76449b5c54ffc5bd1733d9caf964260e4684caef1bcb912";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
