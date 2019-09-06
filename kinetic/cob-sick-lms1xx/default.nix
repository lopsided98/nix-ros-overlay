
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-lms1xx";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_lms1xx/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "3eb2a5cecd474dda5229924d7b4a24f7dc77daf13ffb64d59c40f9ddfec6ce65";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs sensor-msgs roscpp boost ];
  propagatedBuildInputs = [ diagnostic-msgs sensor-msgs roscpp boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick LMS1xx laser scanner.
	This version is made by fusion of ipa320/RCPRG_laser_drivers and ipa320/libLMS1xx repository. This package shuld have clearer structure and be easier to install.'';
    license = with lib.licenses; [ asl20 ];
  };
}
