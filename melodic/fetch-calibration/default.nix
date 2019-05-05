
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-calibration, catkin }:
buildRosPackage {
  pname = "ros-melodic-fetch-calibration";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_calibration/0.8.1-0.tar.gz;
    sha256 = "38c0c089729fa01add0ebd3318007f044b0ac9c1ca4eadf6bb58e0925f7a8716";
  };

  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
