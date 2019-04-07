
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-lms1xx";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_lms1xx/0.6.13-0.tar.gz;
    sha256 = "214425323c8a7b4bf5d560891bb0d5fb2badf5d2df212bc981c742ce8355d46d";
  };

  buildInputs = [ diagnostic-msgs sensor-msgs roscpp boost ];
  propagatedBuildInputs = [ diagnostic-msgs sensor-msgs roscpp boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick LMS1xx laser scanner.
	This version is made by fusion of ipa320/RCPRG_laser_drivers and ipa320/libLMS1xx repository. This package shuld have clearer structure and be easier to install.'';
    #license = lib.licenses.Apache 2.0;
  };
}
