
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense-cal-check";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_cal_check/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "4dc42f3a299ca8c5a9ec7b6565a4adc3be7fd6fbc95d96bf306334c4cf6dd266";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_cal_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
