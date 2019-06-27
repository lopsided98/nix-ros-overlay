
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-lms1xx";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_lms1xx/0.6.14-1.tar.gz;
    sha256 = "ee46f21a475bb7bb9d022ea9423078d1724d82e76d895cad0557c4164d10669e";
  };

  buildInputs = [ diagnostic-msgs sensor-msgs roscpp boost ];
  propagatedBuildInputs = [ diagnostic-msgs sensor-msgs roscpp boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick LMS1xx laser scanner.
	This version is made by fusion of ipa320/RCPRG_laser_drivers and ipa320/libLMS1xx repository. This package shuld have clearer structure and be easier to install.'';
    license = with lib.licenses; [ asl20 ];
  };
}
