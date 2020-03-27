
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-sick-lms1xx";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_sick_lms1xx/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "8df71ca46588436e2601cf93467e36a9a88a6b73c32824e53011213d41201cb7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost diagnostic-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick LMS1xx laser scanner.
	This version is made by fusion of ipa320/RCPRG_laser_drivers and ipa320/libLMS1xx repository. This package shuld have clearer structure and be easier to install.'';
    license = with lib.licenses; [ asl20 ];
  };
}
